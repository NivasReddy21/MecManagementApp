import 'package:http/http.dart' as http;
import 'dart:convert';

class PostManagement {
  List postData;

  Future<void> getPostData() async {
    try {
      print('getting response');
      var mainUrl = 'http://10.0.2.2:4444/showposts';
      // Await the http get response, then decode the json-formatted response.
      print('got response');
      var response =
          await http.get(mainUrl, headers: {"Accept": "appclication/json"});
      List data = await json.decode(response.body);
      this.postData = data;
    } catch (e) {
      this.postData = [e];
      print("error$e");
    }
  }
}
