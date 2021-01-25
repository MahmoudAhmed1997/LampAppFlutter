import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:lamp/constants.dart' as cons;

class ContactUsApi {
  Types types;

  ContactUsApi({this.types});

  ContactUsApi.fromJson(Map<String, dynamic> json) {
    types = json['types'] != null ? new Types.fromJson(json['types']) : null;
  }
  Future<ContactUsApi> fetchContactUsType() async {
    final url = '${cons.Constants.apiUrl}/contact-types';

    final response = await http.get(url);

    if (response.statusCode == 200) {

      print("fetchContactUsType ${response.body}");

      return ContactUsApi.fromJson(jsonDecode(response.body));
    } else {
      print("about error ${response.body}");

      throw Exception('Failed to load album');
    }
  }


}

class Types {
  String issue;
  String suggestion;
  String general;
  String info;

  Types({this.issue, this.suggestion, this.general, this.info});

  Types.fromJson(Map<String, dynamic> json) {
    issue = json['issue'];
    suggestion = json['suggestion'];
    general = json['general'];
    info = json['info'];
  }


}