import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:lamp/constants.dart' as cons;

//
// class Designers with ChangeNotifier {
//   int id;
//   String img;
//   String name;
//   // Null social;
//   // String accountNum;
//   // String iBANNum;
//   // int isPublished;
//   // String createdAt;
//   // String updatedAt;
//   // User user;
//   // int productsCount;
//   // String name;
//   // String details;
//   // Map<String, dynamic> data;
//   // List<Translations> translations;
//
//   Designers({
//     @required this.id,
//     @required this.img,
//
//     // this.social,
//     // this.accountNum,
//     // this.iBANNum,
//     // this.isPublished,
//     // this.createdAt,
//     // this.updatedAt,
//     // this.user,
//     // this.productsCount,
//     @required this.name,
//
//     // this.details,
//     // @required this.data,
//     // this.translations});
//   });
//   Designers.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     img = json['img'];
//     name = json['name'];
//     // social = json['social'];
//     // accountNum = json['account_num'];
//     // iBANNum = json['IBAN_num'];
//     // isPublished = json['is_published'];
//     // createdAt = json['created_at'];
//     // updatedAt = json['updated_at'];
//     // user = json['user'] != null ? new User.fromJson(json['user']) : null;
//     // productsCount = json['products_count'];
//     // name = json['name'];
//     // details = json['details'];
//     // if (json['translations'] != null) {
//     //   translations = new List<Translations>();
//     //   json['translations'].forEach((v) {
//     //     translations.add(new Translations.fromJson(v));
//     //   });
//     // }
//   }
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['img'] = this.img;
//     data['name'] = this.name;
//     // data['social'] = this.social;
//     // data['account_num'] = this.accountNum;
//     // data['IBAN_num'] = this.iBANNum;
//     // data['is_published'] = this.isPublished;
//     // data['created_at'] = this.createdAt;
//     // data['updated_at'] = this.updatedAt;
//     // if (this.user != null) {
//     //   data['user'] = this.user.toJson();
//     // }
//     // data['products_count'] = this.productsCount;
//     // data['name'] = this.name;
//     // data['details'] = this.details;
//     // if (this.translations != null) {
//     //   data['translations'] = this.translations.map((v) => v.toJson()).toList();
//     // }
//     // this.data;
//     //
//     // return data;
//   }
// class User {
//   int id;
//   String name;
//   String email;
//   String emailVerifiedAt;
//   String phone;
//   String gender;
//   Null social;
//   Null identifyNum;
//   Null identifyImg;
//   int storeId;
//   int cityId;
//   Null profilePhotoPath;
//   Null deletedAt;
//   String createdAt;
//   String updatedAt;
//   String profilePhotoUrl;
//   List<Addresses> addresses;
//   City city;
//   Country country;
//   int favouritesCount;
//   int ordersCount;
//
//   User(
//       {this.id,
//         this.name,
//         this.email,
//         this.emailVerifiedAt,
//         this.phone,
//         this.gender,
//         this.social,
//         this.identifyNum,
//         this.identifyImg,
//         this.storeId,
//         this.cityId,
//         this.profilePhotoPath,
//         this.deletedAt,
//         this.createdAt,
//         this.updatedAt,
//         this.profilePhotoUrl,
//         this.addresses,
//         this.city,
//         this.country,
//         this.favouritesCount,
//         this.ordersCount});
//
//   User.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     email = json['email'];
//     emailVerifiedAt = json['email_verified_at'];
//     phone = json['phone'];
//     gender = json['gender'];
//     social = json['social'];
//     identifyNum = json['identify_num'];
//     identifyImg = json['identify_img'];
//     storeId = json['store_id'];
//     cityId = json['city_id'];
//     profilePhotoPath = json['profile_photo_path'];
//     deletedAt = json['deleted_at'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     profilePhotoUrl = json['profile_photo_url'];
//     if (json['addresses'] != null) {
//       addresses = new List<Addresses>();
//       json['addresses'].forEach((v) {
//         addresses.add(new Addresses.fromJson(v));
//       });
//     }
//     city = json['city'] != null ? new City.fromJson(json['city']) : null;
//     country =
//     json['country'] != null ? new Country.fromJson(json['country']) : null;
//     favouritesCount = json['favourites_count'];
//     ordersCount = json['orders_count'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['email'] = this.email;
//     data['email_verified_at'] = this.emailVerifiedAt;
//     data['phone'] = this.phone;
//     data['gender'] = this.gender;
//     data['social'] = this.social;
//     data['identify_num'] = this.identifyNum;
//     data['identify_img'] = this.identifyImg;
//     data['store_id'] = this.storeId;
//     data['city_id'] = this.cityId;
//     data['profile_photo_path'] = this.profilePhotoPath;
//     data['deleted_at'] = this.deletedAt;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     data['profile_photo_url'] = this.profilePhotoUrl;
//     if (this.addresses != null) {
//       data['addresses'] = this.addresses.map((v) => v.toJson()).toList();
//     }
//     if (this.city != null) {
//       data['city'] = this.city.toJson();
//     }
//     if (this.country != null) {
//       data['country'] = this.country.toJson();
//     }
//     data['favourites_count'] = this.favouritesCount;
//     data['orders_count'] = this.ordersCount;
//     return data;
//   }
// }
// class Addresses {
//   int id;
//   int userId;
//   String title;
//   String address;
//   bool isDefault;
//   Null phone;
//   Null email;
//   Null cityId;
//   Null streetNum;
//   String createdAt;
//   String updatedAt;
//   Null city;
//
//   Addresses(
//       {this.id,
//         this.userId,
//         this.title,
//         this.address,
//         this.isDefault,
//         this.phone,
//         this.email,
//         this.cityId,
//         this.streetNum,
//         this.createdAt,
//         this.updatedAt,
//         this.city});
//
//   Addresses.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     userId = json['user_id'];
//     title = json['title'];
//     address = json['address'];
//     isDefault = json['is_default'];
//     phone = json['phone'];
//     email = json['email'];
//     cityId = json['city_id'];
//     streetNum = json['street_num'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     city = json['city'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['user_id'] = this.userId;
//     data['title'] = this.title;
//     data['address'] = this.address;
//     data['is_default'] = this.isDefault;
//     data['phone'] = this.phone;
//     data['email'] = this.email;
//     data['city_id'] = this.cityId;
//     data['street_num'] = this.streetNum;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     data['city'] = this.city;
//     return data;
//   }
// }
//
// class City {
//   int id;
//   int countryId;
//   String createdAt;
//   String updatedAt;
//   String name;
//   List<Translations> translations;
//
//   City(
//       {this.id,
//         this.countryId,
//         this.createdAt,
//         this.updatedAt,
//         this.name,
//         this.translations});
//
//   City.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     countryId = json['country_id'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     name = json['name'];
//     if (json['translations'] != null) {
//       translations = new List<Translations>();
//       json['translations'].forEach((v) {
//         translations.add(new Translations.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['country_id'] = this.countryId;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     data['name'] = this.name;
//     if (this.translations != null) {
//       data['translations'] = this.translations.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Translations {
//   int id;
//   int cityId;
//   String name;
//   String locale;
//   Null createdAt;
//   Null updatedAt;
//
//   Translations(
//       {this.id,
//         this.cityId,
//         this.name,
//         this.locale,
//         this.createdAt,
//         this.updatedAt});
//
//   Translations.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     cityId = json['city_id'];
//     name = json['name'];
//     locale = json['locale'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['city_id'] = this.cityId;
//     data['name'] = this.name;
//     data['locale'] = this.locale;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     return data;
//   }
// }
//
// class Country {
//   int id;
//   String createdAt;
//   String updatedAt;
//   String name;
//   List<Translations> translations;
//
//   Country(
//       {this.id, this.createdAt, this.updatedAt, this.name, this.translations});
//
//   Country.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     name = json['name'];
//     if (json['translations'] != null) {
//       translations = new List<Translations>();
//       json['translations'].forEach((v) {
//         translations.add(new Translations.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     data['name'] = this.name;
//     if (this.translations != null) {
//       data['translations'] = this.translations.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//

class Designer with ChangeNotifier{
  int id;
  String name;
  String img;

  Designer({
    @required this.id,
    @required this.name,
    @required this.img,
  });

  Designer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['user']['name'];
    img= json['img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user']['name'] = this.name;
    data['img'] = this.img;
    return data;
  }

  @override
  String toString() {
    return 'id: $id, name: $name, img: $img';
  }
}




