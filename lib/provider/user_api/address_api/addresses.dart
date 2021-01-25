class AddressesApi {
  List<Address> address;

  AddressesApi({this.address});

  AddressesApi.fromJson(Map<String, dynamic> json) {
    if (json['address'] != null) {
      address = new List<Address>();
      json['address'].forEach((v) {
        address.add(new Address.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.address != null) {
      data['address'] = this.address.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Address {
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

  Address(
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

  Address.fromJson(Map<String, dynamic> json) {
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
  List<Translations> translations;

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