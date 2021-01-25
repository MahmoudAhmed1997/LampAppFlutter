import 'package:provider/provider.dart';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:lamp/provider/designer.dart';
import 'package:lamp/constants.dart' as cons;

class ContactUsApi {
  Info info;
  String success;
  bool status;

  ContactUsApi({this.info, this.success, this.status});

  ContactUsApi.fromJson(Map<String, dynamic> json) {
    info = json['info'] != null ? new Info.fromJson(json['info']) : null;
    success = json['success'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.info != null) {
      data['info'] = this.info.toJson();
    }
    data['success'] = this.success;
    data['status'] = this.status;
    return data;
  }
  Future<ContactUsApi> fetchContactUs() async {
    final url = '${cons.Constants.apiUrl}/pages/contact-us';
    final response = await http.get(url);

    if (response.statusCode == 200) {
      print("about ${response.body}");
      return ContactUsApi.fromJson(jsonDecode(response.body));
    } else {
      print("about error ${response.body}");
      throw Exception('Failed to load');
    }
  }

}

class Info {
  String coordinates;
  String address;
  String email;
  String phone;

  Info({this.coordinates, this.address, this.email, this.phone});

  Info.fromJson(Map<String, dynamic> json) {
    coordinates = json['coordinates'];
    address = json['address'];
    email = json['email'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['coordinates'] = this.coordinates;
    data['address'] = this.address;
    data['email'] = this.email;
    data['phone'] = this.phone;
    return data;
  }


  @override
  String toString() {
    return 'email: $email, phone: $phone, address: $address';
  }
}


