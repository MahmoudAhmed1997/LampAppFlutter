import 'package:http/http.dart'as http;
import 'package:lamp/constants.dart' as cons;
import 'dart:convert';
class CitiesApi {
  List<Cities> cities;

  CitiesApi({this.cities});

  CitiesApi.fromJson(Map<String, dynamic> json) {
    if (json['cities'] != null) {
      cities = new List<Cities>();
      json['cities'].forEach((v) {
        cities.add(new Cities.fromJson(v));
      });
    }
  }

  Future<CitiesApi> fetchCities() async {
    final url = '${cons.Constants.apiUrl}/cities';

    final response = await http.get(url);

    if (response.statusCode == 200) {

      print("cities ${response.body}");

      return CitiesApi.fromJson(jsonDecode(response.body));
    } else {
      print("cities ${response.body}");

      throw Exception('Failed to load cities');
    }
  }

}

class Cities {
  int id;
  int countryId;
  String createdAt;
  String updatedAt;
  String name;
  List<Translations> translations;

  Cities(
      {this.id,
        this.countryId,
        this.createdAt,
        this.updatedAt,
        this.name,
        this.translations});

  Cities.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    countryId = json['country_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    name = json['name'];
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
    data['country_id'] = this.countryId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['name'] = this.name;
    if (this.translations != null) {
      data['translations'] = this.translations.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Translations {
  int id;
  int cityId;
  String name;
  String locale;
  Null createdAt;
  Null updatedAt;

  Translations(
      {this.id,
        this.cityId,
        this.name,
        this.locale,
        this.createdAt,
        this.updatedAt});

  Translations.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    cityId = json['city_id'];
    name = json['name'];
    locale = json['locale'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['city_id'] = this.cityId;
    data['name'] = this.name;
    data['locale'] = this.locale;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}