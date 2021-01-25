import 'package:provider/provider.dart';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:lamp/constants.dart' as cons;
class UserProfile {
  User user;

  UserProfile({this.user});

  UserProfile.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    return data;
  }

  Future<UserProfile> fetchUserProfile() async {
    final url = '${cons.Constants.apiUrl}/profile/';
    final response = await http.get(url
        ,headers:
        {
          "Accept":"application/json",
          "Content-Type":"application/json;charset=UTF-8",
          "Accept-Language":"ar",
          "Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMmQ5ZDI2ZDIzNDE5MjUzODA2MDE3NDE1ZTlmYTA1NjEyYTJlZGQyYjBjMWMyZTA4YTlmNDY2ODNlYWZkN2VhOTcxODljOWMzMzdkYTU4ZmIiLCJpYXQiOiIxNjExNTE2OTI0LjQxNzkxMCIsIm5iZiI6IjE2MTE1MTY5MjQuNDE3OTE3IiwiZXhwIjoiMTY0MzA1MjkyNC40MTI0MzUiLCJzdWIiOiIzMSIsInNjb3BlcyI6W119.SMnoMF-vMrbcgMsUxZEjielPLCOW-gjb7X_bgLKMWym2SjRC_qpTfjW074qtG1wkxn6DRUYKFtaqGIQ6Qh8gRNe__DRpkKK5Z46WFOIuEUxqJuvQZpygvoE9KiaSzxlGYa6taZmfC_LBJHPtoJQdAYYjansMsDzD29gNEvkpSIzyhooLKQS57HQ6dD3mQBwwZJq_7sWkPkLQV9EN8NgdoWz65vbwNGqUJFjJUqS5_HVXxv-7jhzwgkoAlrFEWANIYhYTvED5HL9vSmmQYaHzDILMvYSo9nmXUPz5FSg61QvjbnRqQy2Pr_XdByz5D2FfbnzvUkI6YyYmYCbj2C2pHVDbQv94P_fd2DevHU8LfYcDKhnb41rBG_I6NU7jgNg-KYnJvoD0te_LiYviHYvhcZNLiGSZTR62uwIZW9a_QBohRxp-e-ano15bycIXnnGO4k3SlXqVvf-qeDkEmbPXRq20cWPH6eKNiL2rR8PldVh2WsvGsYt9d0v-4-ZeFxBLqZGbXwaoQMm9_Utjf9hgCZfIGIM11qlObZpXweTKqfVlVRG7ikRk8J1SyfrNNAD3SRrtNeECjlwtYsK_lUrdHF-MLkRsUhusndamJz-it05J8c7h08PW0TZ5jIpp4OjofpI9DiZqAS5RUXWE6dFW6pWP0IVpdXahrnaYFMLGGkM "
        }

    );
    if (response.statusCode == 200) {
      print("about ${response.body}");
      return UserProfile.fromJson(jsonDecode(response.body));
    }else{
      print("about error ${response.body}");
      throw Exception('Failed to load');
    }
  }

}

class User {
  int id;
  String name;
  String email;
  String emailVerifiedAt;
  String phone;
  String gender;
  Null social;
  Null identifyNum;
  Null identifyImg;
  int storeId;
  int cityId;
  Null profilePhotoPath;
  Null deletedAt;
  String createdAt;
  String updatedAt;
  String profilePhotoUrl;
  List<Addresses> addresses;
  City city;
  Country country;
  int favouritesCount;
  int ordersCount;

  User(
      {this.id,
        this.name,
        this.email,
        this.emailVerifiedAt,
        this.phone,
        this.gender,
        this.social,
        this.identifyNum,
        this.identifyImg,
        this.storeId,
        this.cityId,
        this.profilePhotoPath,
        this.deletedAt,
        this.createdAt,
        this.updatedAt,
        this.profilePhotoUrl,
        this.addresses,
        this.city,
        this.country,
        this.favouritesCount,
        this.ordersCount});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    phone = json['phone'];
    gender = json['gender'];
    social = json['social'];
    identifyNum = json['identify_num'];
    identifyImg = json['identify_img'];
    storeId = json['store_id'];
    cityId = json['city_id'];
    profilePhotoPath = json['profile_photo_path'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    profilePhotoUrl = json['profile_photo_url'];
    if (json['addresses'] != null) {
      addresses =  List<Addresses>();
      json['addresses'].forEach((v) {
        addresses.add(new Addresses.fromJson(v));
      });
    }
    city = json['city'] != null ? new City.fromJson(json['city']) : null;
    country =
    json['country'] != null ? new Country.fromJson(json['country']) : null;
    favouritesCount = json['favourites_count'];
    ordersCount = json['orders_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['phone'] = this.phone;
    data['gender'] = this.gender;
    data['social'] = this.social;
    data['identify_num'] = this.identifyNum;
    data['identify_img'] = this.identifyImg;
    data['store_id'] = this.storeId;
    data['city_id'] = this.cityId;
    data['profile_photo_path'] = this.profilePhotoPath;
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['profile_photo_url'] = this.profilePhotoUrl;
    if (this.addresses != null) {
      data['addresses'] = this.addresses.map((v) => v.toJson()).toList();
    }
    if (this.city != null) {
      data['city'] = this.city.toJson();
    }
    if (this.country != null) {
      data['country'] = this.country.toJson();
    }
    data['favourites_count'] = this.favouritesCount;
    data['orders_count'] = this.ordersCount;
    return data;
  }
  @override
  String toString() {
    return 'email: $email, name: $name, id: $id';
  }
}

class Addresses {
  int id;
  int userId;
  String title;
  String address;
  bool isDefault;
  String phone;
  String email;
  int cityId;
  String streetNum;
  String createdAt;
  String updatedAt;
  String city;

  Addresses(
      {this.id,
        this.userId,
        this.title,
        this.address,
        this.isDefault,
        this.phone,
        this.email,
        this.cityId,
        this.streetNum,
        this.createdAt,
        this.updatedAt,
        this.city});

  Addresses.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    title = json['title'];
    address = json['address'];
    isDefault = json['is_default'];
    phone = json['phone'];
    email = json['email'];
    cityId = json['city_id'];
    streetNum = json['street_num'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    city = json['city'];

  //  city = json['city'] != null ? new City.fromJson(json['city']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['title'] = this.title;
    data['address'] = this.address;
    data['is_default'] = this.isDefault;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['city_id'] = this.cityId;
    data['street_num'] = this.streetNum;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['city'] = this.city;
    // if (this.city != null) {
    //   data['city'] = this.city.toJson();
    // }
    return data;
  }
  @override
  String toString() {
    return 'email: $email, userId:$userId';
  }
}

class City {
  int id;
  int countryId;
  String createdAt;
  String updatedAt;
  String name;
  List<TranslationsCity> translations;

  City(
      {this.id,
        this.countryId,
        this.createdAt,
        this.updatedAt,
        this.name,
        this.translations});

  City.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    countryId = json['country_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    name = json['name'];
    if (json['translations'] != null) {
      translations = new List<TranslationsCity>();
      json['translations'].forEach((v) {
        translations.add(new TranslationsCity.fromJson(v));
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

class TranslationsCity {
  int id;
  int cityId;
  String name;
  String locale;
  // Null createdAt;
  // Null updatedAt;

  TranslationsCity(
      {this.id,
        this.cityId,
        this.name,
        this.locale,
        // this.createdAt,
        // this.updatedAt
      });

  TranslationsCity.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    cityId = json['city_id'];
    name = json['name'];
    locale = json['locale'];
    // createdAt = json['created_at'];
    // updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['city_id'] = this.cityId;
    data['name'] = this.name;
    data['locale'] = this.locale;
    // data['created_at'] = this.createdAt;
    // data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Country {
  int id;
  String createdAt;
  String updatedAt;
  String name;
  List<TranslationsCountry> translations;

  Country(
      {this.id, this.createdAt, this.updatedAt, this.name, this.translations});

  Country.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    name = json['name'];
    if (json['translations'] != null) {
      translations = new List<TranslationsCountry>();
      json['translations'].forEach((v) {
        translations.add(new TranslationsCountry.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['name'] = this.name;
    if (this.translations != null) {
      data['translations'] = this.translations.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TranslationsCountry {
  int id;
  int countryId;
  String name;
  String locale;
  Null createdAt;
  Null updatedAt;

  TranslationsCountry(
      {this.id,
        this.countryId,
        this.name,
        this.locale,
        this.createdAt,
        this.updatedAt});

  TranslationsCountry.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    countryId = json['country_id'];
    name = json['name'];
    locale = json['locale'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['country_id'] = this.countryId;
    data['name'] = this.name;
    data['locale'] = this.locale;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

