import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

const List<Key> keys = [
  Key("Asset"),
];

Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      backgroundColor: Color(0XFF1b1e44),
      title: Text("UPLOAD"),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
              key: keys[0],
              color: Color(0XFF1b1e44),
              child: Text(
                'Upload',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (_) => AssetGiffyDialog(
                      key: keys[0],
                      image: Image.asset(
                        'assets/upload.gif',
                        fit: BoxFit.fill,
                      ),
                      title: Text(
                        'The Photo Was Uploaded\n  Successfully',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.w600),
                      ),
                      entryAnimation: EntryAnimation.BOTTOM_RIGHT,
                      description: Text(
                        'Thank You',
                        textAlign: TextAlign.center,
                        style: TextStyle(),
                      ),
                      onOkButtonPressed: () {},
                    ));
              }),
        ],
      ),
    ),
  );
}
