import 'package:flutter/cupertino.dart';
import 'package:http/http.dart'as http;
import 'package:lamp/constants.dart' as cons;
import 'dart:convert';


class AboutPageApi with ChangeNotifier{
  Page page;
  String success;
  bool status;

  AboutPageApi({this.page, this.success, this.status});

  AboutPageApi.fromJson(Map<String, dynamic> json) {
    page = json['page'] != null ? new Page.fromJson(json['page']) : null;

    success = json['success'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.page != null) {
      data['page'] = this.page.toJson();
    }

    data['success'] = this.success;
    data['status'] = this.status;
    return data;
  }

  Future<AboutPageApi> fetchAbout() async {
    final url = '${cons.Constants.apiUrl}/pages/about/details';

    final response = await http.get(url);

    if ( status = true && response.statusCode == 200) {

      print("about ${response.body}");

      return AboutPageApi.fromJson(jsonDecode(response.body));
    } else {
      print("about error ${response.body}");

      throw Exception('Failed to load album');
    }
  }

}

class Page {
  int id;
  String url;
  int isPrivate;
  int isPublished;
  String createdAt;
  String updatedAt;
  String name;
  String title;
  String body;
  List<Translations> translations;

  Page(
      {this.id,
        this.url,
        this.isPrivate,
        this.isPublished,
        this.createdAt,
        this.updatedAt,
        this.name,
        this.title,
        this.body,
        this.translations});

  Page.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    isPrivate = json['is_private'];
    isPublished = json['is_published'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    name = json['name'];
    title = json['title'];
    body = json['body'];
    if (json['translations'] != null) {
      translations = new List<Translations>();
      json['translations'].forEach((v) {
        translations.add(new Translations.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    data['is_private'] = this.isPrivate;
    data['is_published'] = this.isPublished;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['name'] = this.name;
    data['title'] = this.title;
    data['body'] = this.body;
    if (this.translations != null) {
      data['translations'] = this.translations.map((v) => v.toJson()).toList();
    }
    return data;
  }
  @override
  String toString() {
    return 'id: $id, name: $name, body: $body';
  }

}

class Translations {
  int id;
  String name;
  String title;
  String body;
  String locale;
  int pageId;

  Translations(
      {this.id, this.name, this.title, this.body, this.locale, this.pageId});

  Translations.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    title = json['title'];
    body = json['body'];
    locale = json['locale'];
    pageId = json['page_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['title'] = this.title;
    data['body'] = this.body;
    data['locale'] = this.locale;
    data['page_id'] = this.pageId;
    return data;
  }


}















