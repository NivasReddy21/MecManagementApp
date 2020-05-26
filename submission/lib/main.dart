import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'package:submission/services/postData.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name;
  String email;
  String branch;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
            height: 500,
            width: 500,
            child: Card(
              child: Container(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Column(
                    children: [
                      Text(
                        'Student submissions',
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            name = value;
                          });
                        },
                        cursorColor: Colors.grey[600],
                        decoration: InputDecoration(
                          hintText: 'Name',
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: Colors.grey[600],
                          ),
                          fillColor: Colors.white24,
                          filled: true,
                          focusColor: Colors.grey[600],
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white24, width: 2),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey[600], width: 2),
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            email = value.trim();
                          });
                        },
                        cursorColor: Colors.grey[900],
                        decoration: InputDecoration(
                          hintText: 'Email',
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.grey[600],
                          ),
                          fillColor: Colors.white24,
                          filled: true,
                          focusColor: Colors.grey[600],
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white24, width: 2),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey[600], width: 2),
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            branch = value.trim();
                          });
                        },
                        cursorColor: Colors.grey[600],
                        decoration: InputDecoration(
                          hintText: 'Branch',
                          prefixIcon: Icon(
                            Icons.filter_list,
                            color: Colors.grey[600],
                          ),
                          fillColor: Colors.white24,
                          filled: true,
                          focusColor: Colors.grey[600],
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white24, width: 2),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey[600], width: 2),
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      FlatButton(
                        onPressed: () async {
                          await SubmitForm().makePostReq(name, email, branch);
                          print('Hello');
                        },
                        child: Text(
                          'Submit',
                          style:
                              TextStyle(fontSize: 20, color: Colors.grey[600]),
                        ),
                      )
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
