import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:lamp/constants.dart' as cons;

class OrdersListApi {
  OrdersCard orders;
  String success;
  bool status;

  OrdersListApi({this.orders, this.success, this.status});

  OrdersListApi.fromJson(Map<String, dynamic> json) {
    orders = json['orders'] = OrdersCard.fromJson(json['orders']);
    success = json['success'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.orders != null) {
      data['orders'] = this.orders.toJson();
    }
    data['success'] = this.success;
    data['status'] = this.status;
    return data;
  }

  Future<OrdersListApi> fetchOrdersListApi() async {
    final url = '${cons.Constants.apiUrl}/orders?current=false';

    final response = await http.get(url, headers: {
      "Accept": "application/json",
      "Content-Type": "application/json;charset=UTF-8",
      "Accept-Language": "ar",
      "Authorization":
          "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMmQ5ZDI2ZDIzNDE5MjUzODA2MDE3NDE1ZTlmYTA1NjEyYTJlZGQyYjBjMWMyZTA4YTlmNDY2ODNlYWZkN2VhOTcxODljOWMzMzdkYTU4ZmIiLCJpYXQiOiIxNjExNTE2OTI0LjQxNzkxMCIsIm5iZiI6IjE2MTE1MTY5MjQuNDE3OTE3IiwiZXhwIjoiMTY0MzA1MjkyNC40MTI0MzUiLCJzdWIiOiIzMSIsInNjb3BlcyI6W119.SMnoMF-vMrbcgMsUxZEjielPLCOW-gjb7X_bgLKMWym2SjRC_qpTfjW074qtG1wkxn6DRUYKFtaqGIQ6Qh8gRNe__DRpkKK5Z46WFOIuEUxqJuvQZpygvoE9KiaSzxlGYa6taZmfC_LBJHPtoJQdAYYjansMsDzD29gNEvkpSIzyhooLKQS57HQ6dD3mQBwwZJq_7sWkPkLQV9EN8NgdoWz65vbwNGqUJFjJUqS5_HVXxv-7jhzwgkoAlrFEWANIYhYTvED5HL9vSmmQYaHzDILMvYSo9nmXUPz5FSg61QvjbnRqQy2Pr_XdByz5D2FfbnzvUkI6YyYmYCbj2C2pHVDbQv94P_fd2DevHU8LfYcDKhnb41rBG_I6NU7jgNg-KYnJvoD0te_LiYviHYvhcZNLiGSZTR62uwIZW9a_QBohRxp-e-ano15bycIXnnGO4k3SlXqVvf-qeDkEmbPXRq20cWPH6eKNiL2rR8PldVh2WsvGsYt9d0v-4-ZeFxBLqZGbXwaoQMm9_Utjf9hgCZfIGIM11qlObZpXweTKqfVlVRG7ikRk8J1SyfrNNAD3SRrtNeECjlwtYsK_lUrdHF-MLkRsUhusndamJz-it05J8c7h08PW0TZ5jIpp4OjofpI9DiZqAS5RUXWE6dFW6pWP0IVpdXahrnaYFMLGGkM "
    });

    if (response.statusCode == 200) {
      print("OrdersApi ${response.body}");

      return OrdersListApi.fromJson(jsonDecode(response.body));
    } else {
      print("OrdersApi error ${response.body}");

      throw Exception('Failed to load album');
    }
  }
}

class OrdersCard {
  int currentPage;
  List<Data> data;
  String firstPageUrl;
  int from;
  int lastPage;
  String lastPageUrl;
  List<Links> links;
  String nextPageUrl;
  String path;
  int perPage;
  String prevPageUrl;
  int to;
  int total;

  OrdersCard(
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

  OrdersCard.fromJson(Map<String, dynamic> json) {
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

  @override
  String toString() {
    return 'nextPageUrl:$nextPageUrl,prevPageUrl:$prevPageUrl,currentPage: $currentPage, firstPageUrl: $firstPageUrl, lastPage: $lastPage,from:$from,lastPageUrl:$lastPageUrl,lastPage:$lastPage,path:$path,perPage:$perPage,to:$to,total:$total';
  }
}

class Data {
  int id;
  int couponId;
  int userId;
  int addressId;
  int invoiceId;
  int paymentId;
  int shippingMethodId;
  String notes;
  String status;
  int total;
  String deliveredAt;
  String createdAt;
  String updatedAt;
  String deletedAt;
  User user;
  List<Items> items;
  double totalWithTax;
  String statusName;
  String created;
  double statusProgressPercentage;

  Data(
      {this.id,
      this.couponId,
      this.userId,
      this.addressId,
      this.invoiceId,
      this.paymentId,
      this.shippingMethodId,
      this.notes,
      this.status,
      this.total,
      this.deliveredAt,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.user,
      this.items,
      this.totalWithTax,
      this.statusName,
      this.created,
      this.statusProgressPercentage});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    couponId = json['coupon_id'];
    userId = json['user_id'];
    addressId = json['address_id'];
    invoiceId = json['invoice_id'];
    paymentId = json['payment_id'];
    shippingMethodId = json['shipping_method_id'];
    notes = json['notes'];
    status = json['status'];
    total = json['total'];
    deliveredAt = json['delivered_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    if (json['items'] != null) {
      items = new List<Items>();
      json['items'].forEach((v) {
        items.add(new Items.fromJson(v));
      });
    }
    totalWithTax = json['total_with_tax'];
    statusName = json['status_name'];
    created = json['created'];
    statusProgressPercentage = json['status_progress_percentage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['coupon_id'] = this.couponId;
    data['user_id'] = this.userId;
    data['address_id'] = this.addressId;
    data['invoice_id'] = this.invoiceId;
    data['payment_id'] = this.paymentId;
    data['shipping_method_id'] = this.shippingMethodId;
    data['notes'] = this.notes;
    data['status'] = this.status;
    data['total'] = this.total;
    data['delivered_at'] = this.deliveredAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    data['total_with_tax'] = this.totalWithTax;
    data['status_name'] = this.statusName;
    data['created'] = this.created;
    data['status_progress_percentage'] = this.statusProgressPercentage;
    return data;
  }

  @override
  String toString() {
    return 'notes:$notes,deletedAt:$deletedAt,deliveredAt:$deliveredAt,id: $id,';
  }
}

class User {
  int id;
  String name;
  String email;
  String emailVerifiedAt;
  String phone;
  String gender;
  String social;
  String identifyNum;
  String identifyImg;
  int storeId;
  int cityId;
  String profilePhotoPath;
  String deletedAt;
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

  @override
  String toString() {
    return 'social:$social,identifyImg:$identifyImg,identifyNum:$identifyNum,profilePhotoPath:$profilePhotoPath,deletedAt:$deletedAt,id: $id, name: $name';
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

  @override
  String toString() {
    return 'id: $id';
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

  @override
  String toString() {
    return 'id: $id, name: $name';
  }
}

class TranslationsCity {
  int id;
  int cityId;
  String name;
  String locale;
  String createdAt;
  String updatedAt;

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

  @override
  String toString() {
    return 'id: $id, name: $name,createdAt:$createdAt,updatedAt:$updatedAt';
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

  @override
  String toString() {
    return 'id: $id, name: $name';
  }
}

class TranslationsCountry {
  int id;
  int countryId;
  String name;
  String locale;
  String createdAt;
  String updatedAt;

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

  @override
  String toString() {
    return 'id: $id, name: $name,createdAt:$createdAt,updatedAt:$updatedAt';
  }
}

class Items {
  int id;
  int orderId;
  int productId;
  int quantity;
  double price;
  String details;
  String createdAt;
  String updatedAt;

  Items(
      {this.id,
      this.orderId,
      this.productId,
      this.quantity,
      this.price,
      this.details,
      this.createdAt,
      this.updatedAt});

  Items.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    orderId = json['order_id'];
    productId = json['product_id'];
    quantity = json['quantity'];
    price = json['price'];
    details = json['details'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['order_id'] = this.orderId;
    data['product_id'] = this.productId;
    data['quantity'] = this.quantity;
    data['price'] = this.price;
    data['details'] = this.details;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }

  @override
  String toString() {
    return 'id: $id,details:$details';
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
