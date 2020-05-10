import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mec_management_app/services/posts_management.dart';

class ImageCapture extends StatefulWidget {
  @override
  _ImageCaptureState createState() => _ImageCaptureState();
}

class _ImageCaptureState extends State<ImageCapture> {
  File _imageFile;
  String _title = "";
  String _description = "";

  final _formKey = GlobalKey<FormState>();

  Future<void> _pickImage(ImageSource source) async {
    File selected = await ImagePicker.pickImage(source: source);

    setState(() {
      _imageFile = selected;
    });
  }

  void _clear() {
    setState(() {
      _imageFile = null;
    });
  }

  Future<void> _cropImage() async {
    File _cropped = await ImageCropper.cropImage(
      sourcePath: _imageFile.path,
    );
    setState(() {
      _imageFile = _cropped ?? _imageFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Upload Post'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.indigo[800], Colors.indigo[200]]),
          ),
        ),
      ),
      backgroundColor: Colors.red[300],
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            Expanded(
              child: IconButton(
                icon: Icon(Icons.photo_camera),
                onPressed: () => _pickImage(ImageSource.camera),
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.photo_album),
                onPressed: () => _pickImage(ImageSource.gallery),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          if (_imageFile != null) ...{
            Image.file(_imageFile),
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    child: Icon(Icons.crop),
                    onPressed: _cropImage,
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: Icon(Icons.refresh),
                    onPressed: _clear,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.person),
                      hintText: 'Enter Title',
                      labelText: 'Title',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return value;
                    },
                    onChanged: (value) {
                      setState(() {
                        _title = value;
                      });
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.person),
                      hintText: 'Enter your name',
                      labelText: 'Name',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      setState(() {
                        _description = value;
                      });
                      return value;
                    },
                    onChanged: (value) {
                      setState(() {
                        _description = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Uploader(
              file: _imageFile,
              title: _title,
              description: _description,
            )
          } else ...{
            Text(
              'Start Uploading',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            )
          }
        ],
      ),
    );
  }
}

class Uploader extends StatefulWidget {
  final File file;
  final String title;
  final String description;

  Uploader({Key key, this.file, this.description, this.title})
      : super(key: key);

  @override
  _UploaderState createState() => _UploaderState();
}

class _UploaderState extends State<Uploader> {
  final FirebaseStorage _storage =
      FirebaseStorage(storageBucket: 'gs://mecmanagementapp.appspot.com/');

  StorageUploadTask _uploadTask;

  void _startUpload() {
    String filePath = 'images/${DateTime.now()}.png';
    setState(() {
      _uploadTask = _storage.ref().child(filePath).putFile(widget.file);
    });

    post();
  }

  void post() async {
    String url;
    var dowurl = await (await _uploadTask.onComplete).ref.getDownloadURL();
    url = dowurl.toString();
    PostManagement().makePostReq(widget.title, widget.description, url);
    // ignore: unnecessary_statements
    Navigator.of(context).pop;
  }

  @override
  Widget build(BuildContext context) {
    if (_uploadTask != null) {
      return StreamBuilder<StorageTaskEvent>(
        stream: _uploadTask.events,
        builder: (context, snapshot) {
          // var event = snapshot?.data?.snapshot;

          return Column(
            children: <Widget>[
              if (_uploadTask.isComplete) ...{Text('Upload Complete')}
            ],
          );
        },
      );
    } else {
      return FlatButton.icon(
        onPressed: _startUpload,
        icon: Icon(Icons.cloud_upload),
        label: Text('Upload'),
      );
    }
  }
}
