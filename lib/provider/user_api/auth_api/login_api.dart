import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:lamp/constants.dart' as cons;
import 'package:lamp/classes/login_model.dart';




  http.Client client;
  LoginModel loginModel;
  http.Client initClient() {
    if (client == null) {
      client = http.Client();
      return client;
    } else {
      return client;
    }
  }

bool isLogin =false;

Future<Map> loginUser(String email, String password) async {
  client = initClient();
  try {
    http.Response response =await client.post("https://lampnow.sa.com/api/v1/login",
        // headers: {
        //   HttpHeaders.acceptHeader: "application/json",},
        body: {
          "email": email,
          "password": password,
          //  / "fcm_token":token
        });
    print(response.toString());
    if(response.statusCode ==200) {
      Map map = json.decode(response.body) as Map;
      print(map.toString());
      LoginModel loginModel = LoginModel.fromJson(map);
      print(loginModel.message);
      isLogin =true;
      print(isLogin);
      return map;
    }else{
      isLogin =false;

    } }catch (e) {
    isLogin =false;
    return null;
  }
}

Future<Map> signupUser(String name, String password,String phone,String email) async {
  client = initClient();
  try {
    http.Response response =await client.post("https://lampnow.sa.com/api/v1/register",
        // headers: {
        //   HttpHeaders.acceptHeader: "application/json",},
        body: {
          'name':name,
          "password": password,
          'phone':phone,
          "email": email,

          //  / "fcm_token":token
        });
    print(response.body);
    if(response.statusCode ==200) {
      Map map = json.decode(response.body) as Map;
      print(map.toString());
      LoginModel loginModel = LoginModel.fromJson(map);
      print(loginModel.message);
      // isLogin =true;
      // print(isLogin);
      return map;
    }else{
      print("error/////////////");
      // isLogin =false;

    } }catch (e) {
    isLogin =false;
    return null;
  }
}



