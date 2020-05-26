import 'dart:convert';

import 'package:http/http.dart' as http;

class SubmitForm {
  Future<void> makePostReq(name, email, branch) async {
    try {
      var mainUrl = 'https://immense-hamlet-16097.herokuapp.com/submit';
      // Await the http get response, then decode the json-formatted response.

      var response = await http.post(mainUrl,
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            "Access-Control-Allow-Methods": "PUT, GET, POST, DELETE, OPTIONS"
          },
          body: jsonEncode(<String, String>{
            'name': name,
            'email': email,
            'branch': branch
          }));
      print(response.body);
    } catch (e) {
      print("error$e");
    }
  }
}
