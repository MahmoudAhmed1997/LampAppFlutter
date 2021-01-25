import 'dart:convert';
import 'dart:io';


import 'package:http/http.dart' as http;

class NewClient {
  NewClient._();
  static final NewClient newClient = NewClient._();

  http.Client client;

  http.Client initClient() {
    if (client == null) {
      client = http.Client();
      return client;
    } else {
      return client;
    }
  }


  Future<Map<String, dynamic>> loginUser(String mobile, String password,) async {
    client = initClient();
   // try {
      http.Response response =await client.post("https://lampnow.sa.com/api/v1/login", 
      // headers: {
      //   HttpHeaders.acceptHeader: "application/json",}, 
        body: {
        "email": mobile,
        "password": password,
      //  / "fcm_token":token
      });

      Map map = json.decode(response.body) as Map;
      print(map.toString());
      return map;
    // } catch (e) {
    //   return null;
    // }
  }


}
