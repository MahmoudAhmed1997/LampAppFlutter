import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:lamp/constants.dart' as cons;
class StoresApi {
  Stores stores;

  StoresApi({this.stores});

  StoresApi.fromJson(Map<String, dynamic> json) {
    stores =
    json['stores'] != null ? new Stores.fromJson(json['stores']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.stores != null) {
      data['stores'] = this.stores.toJson();
    }
    return data;
  }
  Future<StoresApi> fetchStores() async {
    final url = '${cons.Constants.apiUrl}/stores';

    final response = await http.get(url,  headers:{
      "Accept":"application/json",
      "Content-Type":"application/json",
      "Authorization" :"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiYTI1NDE4NTVlZjExNjcwOTNiODVkMTE1N2Y4Njk3NjAzNGZhZDIwODM1MmU0ZGRhZDMxZGNmMjQzOTdlMjVlMjk4ZDA4NDRlMGRhZmQ5ZDMiLCJpYXQiOiIxNjExMjM0NTk5LjEwODIxOSIsIm5iZiI6IjE2MTEyMzQ1OTkuMTA4MjI4IiwiZXhwIjoiMTY0Mjc3MDU5OS4xMDI3MTciLCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.DKX93WuRHa8-Xp2bSpmDBPfPopJnwO50B-drZiG6fcXahF7_uJ2j99IsKGHAlV6wS_wpA65WlDv9NPuuLjA_fKQbz0ILjM9nY4tdUnM6qdceqVoWp4goDPgwADEBHa68Bfu3BRRgXGuw-z4_OLGLp5LJAZhLlSmLCcX-qSu_rwzqOygpE4KuPkTqz7sg-VKPYlGPMcj3AX0RwYzJzU78bLYIaNEiLi2-opKOao8kez-6FaMtMfxgL2dPdphgieM2EcGq-oWPpyLOfKz7BaNCtKYSQzU_X-p9EEiJscqim0xLdleLF7NLom_4ss_QmlX3IEt0XpbLpl3t0E7eqYTBusZxoJFzBBG0TpxWmKNWyM7ignlRqf4f5ZE4uq69mdAGAJ1QxYtO8Kvg_7GAWgQPlwHwoCuhy5dqizuwqQcJ-PO9-lEIhzZ9EPeUEekac0yRqBr9sVRMp7b2zs2Gaum-Tb_RQjELIWahxH3gxFf9_U2lKxoa3_cq5bZJfYopZtsBdOCyqQ3eusiv_aYUGYu94DmdVEXOrHHLnJJEEeXQmXoH7mdg4PrY_KKjqF6GEuGU1DFEp7TMqH05JWqCGq4vl9vF41kA1Fnh5A4oCy3FyayqM5ivE41mOFqrUPui6XHZapcPsW7S_jChFPxs7m476NPD03KuiTi__fMH3-6jrH4"
    });

    if (response.statusCode == 200) {

      print("StoresApi ${response.body}");

      return StoresApi.fromJson(jsonDecode(response.body));
    } else {
      print("StoresApi error ${response.body}");

      throw Exception('Failed to load album');
    }
  }

}

class Stores {
  int currentPage;
  List<Data> data;
  String firstPageUrl;
  int from;
  int lastPage;
  String lastPageUrl;
  List<Links> links;
  Null nextPageUrl;
  String path;
  int perPage;
  Null prevPageUrl;
  int to;
  int total;

  Stores(
      {this.currentPage,
        this.data,
        this.firstPageUrl,
        this.from,
        this.lastPage,
        this.lastPageUrl,
        this.links,
        this.nextPageUrl,
        this.path,
        this.perPage,
        this.prevPageUrl,
        this.to,
        this.total});

  Stores.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
    firstPageUrl = json['first_page_url'];
    from = json['from'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];
    if (json['links'] != null) {
      links = new List<Links>();
      json['links'].forEach((v) {
        links.add(new Links.fromJson(v));
      });
    }
    nextPageUrl = json['next_page_url'];
    path = json['path'];
    perPage = json['per_page'];
    prevPageUrl = json['prev_page_url'];
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current_page'] = this.currentPage;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['first_page_url'] = this.firstPageUrl;
    data['from'] = this.from;
    data['last_page'] = this.lastPage;
    data['last_page_url'] = this.lastPageUrl;
    if (this.links != null) {
      data['links'] = this.links.map((v) => v.toJson()).toList();
    }
    data['next_page_url'] = this.nextPageUrl;
    data['path'] = this.path;
    data['per_page'] = this.perPage;
    data['prev_page_url'] = this.prevPageUrl;
    data['to'] = this.to;
    data['total'] = this.total;
    return data;
  }
}

class Data {
  int id;
  String img;
  Null social;
  String accountNum;
  String iBANNum;
  int isPublished;
  String createdAt;
  String updatedAt;
  User user;
  int productsCount;
  String name;
  String details;
  List<Translations> translations;

  Data(
      {this.id,
        this.img,
        this.social,
        this.accountNum,
        this.iBANNum,
        this.isPublished,
        this.createdAt,
        this.updatedAt,
        this.user,
        this.productsCount,
        this.name,
        this.details,
        this.translations});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    img = json['img'];
    social = json['social'];
    accountNum = json['account_num'];
    iBANNum = json['IBAN_num'];
    isPublished = json['is_published'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    productsCount = json['products_count'];
    name = json['name'];
    details = json['details'];
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
    data['img'] = this.img;
    data['social'] = this.social;
    data['account_num'] = this.accountNum;
    data['IBAN_num'] = this.iBANNum;
    data['is_published'] = this.isPublished;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    data['products_count'] = this.productsCount;
    data['name'] = this.name;
    data['details'] = this.details;
    if (this.translations != null) {
      data['translations'] = this.translations.map((v) => v.toJson()).toList();
    }
    return data;
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
      addresses = new List<Addresses>();
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
  City city;

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
    city = json['city'] != null ? new City.fromJson(json['city']) : null;
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
    if (this.city != null) {
      data['city'] = this.city.toJson();
    }
    return data;
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
  Null createdAt;
  Null updatedAt;

  TranslationsCity(
      {this.id,
        this.cityId,
        this.name,
        this.locale,
        this.createdAt,
        this.updatedAt});

  TranslationsCity.fromJson(Map<String, dynamic> json) {
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

class Translations {
  int id;
  int storeId;
  String name;
  String details;
  String locale;
  Null createdAt;
  Null updatedAt;

  Translations(
      {this.id,
        this.storeId,
        this.name,
        this.details,
        this.locale,
        this.createdAt,
        this.updatedAt});

  Translations.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    storeId = json['store_id'];
    name = json['name'];
    details = json['details'];
    locale = json['locale'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['store_id'] = this.storeId;
    data['name'] = this.name;
    data['details'] = this.details;
    data['locale'] = this.locale;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Links {
  String url;
  String label;
  bool active;

  Links({this.url, this.label, this.active});

  Links.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    label = json['label'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['label'] = this.label;
    data['active'] = this.active;
    return data;
  }
}