import 'package:flutter/material.dart';

// ignore: camel_case_types
class MainPage extends StatefulWidget {
  @override
  _mainPageState createState() => _mainPageState();
}

// ignore: camel_case_types
class _mainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF1b1e44),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Teach And Learn'),
          centerTitle: true,
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class. This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
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
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.phone),
              hintText: 'Enter your phone number',
              labelText: 'Phone',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter valid phone number';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.assignment),
              hintText: 'Enter which subject you want to learn',
              labelText: 'Subject',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter subject you want to learn';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.edit),
              hintText: '',
              labelText: 'Description',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please Enter Some Text';
              }
              return null;
            },
          ),
          new Container(
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),
              child: new RaisedButton(
                hoverColor: Colors.pink,
                hoverElevation: 50.0,
                color: Color(0xFF1b1e44),
                child: const Text('Submit'),
                textColor: Colors.white,
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text('Date is in preprocessing')));
                  }
                },
              )),
        ],
      ),
    );
  }
}
