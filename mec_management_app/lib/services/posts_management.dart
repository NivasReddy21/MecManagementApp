import 'package:http/http.dart' as http;
import 'dart:convert';

class PostManagement {
  List postData;

  Future<void> getPostData() async {
    try {
      var mainUrl = 'http://10.0.2.2:4444/showposts';
      // Await the http get response, then decode the json-formatted response.

      var response =
          await http.get(mainUrl, headers: {"Accept": "appclication/json"});
      List data = await json.decode(response.body);
      this.postData = data;
    } catch (e) {
      this.postData = [e];
      print("error$e");
    }
  }

  Future<void> makePostReq(title, description, url) async {
    try {
      var mainUrl = 'http://10.0.2.2:4444/posts';
      // Await the http get response, then decode the json-formatted response.

      var response = await http.post(mainUrl,
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(<String, String>{
            'title': title,
            'description': description,
            'url': url
          }));
      print(response.body);
    } catch (e) {
      this.postData = [e];
      print("error$e");
    }
  }
}
