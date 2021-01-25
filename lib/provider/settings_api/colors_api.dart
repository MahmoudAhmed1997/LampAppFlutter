import 'package:provider/provider.dart';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:lamp/provider/designer.dart';
import 'package:lamp/constants.dart' as cons;
class ColorsApi {
  List<String> colors;

  ColorsApi({
    @required this.colors
  });

  ColorsApi.fromJson(Map<String, dynamic> json) {
    colors = json['colors'].cast<String>();
  }


  @override
  String toString() {
    return 'colors: $colors';
  }

  Future<ColorsApi> fetchColors() async {
    final url = '${cons.Constants.apiUrl}/attributes/colors';

    final response = await http.get(url);

    if (response.statusCode == 200) {

      print("colors ${response.body}");


     return ColorsApi.fromJson(jsonDecode(response.body));
    } else {
      print("about error ${response.body}");

      throw Exception('Failed to load album');
    }
  }
}

