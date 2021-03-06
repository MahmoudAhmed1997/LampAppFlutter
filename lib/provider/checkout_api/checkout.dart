

class CheckoutApi {
  String subtotal;
  String discount;
  String total;
  Order order;
  Invoice invoice;
  String success;
  bool status;

  CheckoutApi(
      {this.subtotal,
        this.discount,
        this.total,
        this.order,
        this.invoice,
        this.success,
        this.status});

  CheckoutApi.fromJson(Map<String, dynamic> json) {
    subtotal = json['subtotal'];
    discount = json['discount'];
    total = json['total'];
    order = json['order'] != null ? new Order.fromJson(json['order']) : null;
    invoice =
    json['invoice'] != null ? new Invoice.fromJson(json['invoice']) : null;
    success = json['success'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['subtotal'] = this.subtotal;
    data['discount'] = this.discount;
    data['total'] = this.total;
    if (this.order != null) {
      data['order'] = this.order.toJson();
    }
    if (this.invoice != null) {
      data['invoice'] = this.invoice.toJson();
    }
    data['success'] = this.success;
    data['status'] = this.status;
    return data;
  }
}

class Order {
  String notes;
  int addressId;
  int paymentId;
  int shippingMethodId;
  int couponId;
  int userId;
  String status;
  String updatedAt;
  String createdAt;
  int id;
  double total;
  int invoiceId;
  User user;
  List<Items> items;
  double totalWithTax;
  String statusName;
  String created;
  int statusProgressPercentage;

  Order(
      {this.notes,
        this.addressId,
        this.paymentId,
        this.shippingMethodId,
        this.couponId,
        this.userId,
        this.status,
        this.updatedAt,
        this.createdAt,
        this.id,
        this.total,
        this.invoiceId,
        this.user,
        this.items,
        this.totalWithTax,
        this.statusName,
        this.created,
        this.statusProgressPercentage});

  Order.fromJson(Map<String, dynamic> json) {
    notes = json['notes'];
    addressId = json['address_id'];
    paymentId = json['payment_id'];
    shippingMethodId = json['shipping_method_id'];
    couponId = json['coupon_id'];
    userId = json['user_id'];
    status = json['status'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
    total = json['total'];
    invoiceId = json['invoice_id'];
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
    data['notes'] = this.notes;
    data['address_id'] = this.addressId;
    data['payment_id'] = this.paymentId;
    data['shipping_method_id'] = this.shippingMethodId;
    data['coupon_id'] = this.couponId;
    data['user_id'] = this.userId;
    data['status'] = this.status;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    data['total'] = this.total;
    data['invoice_id'] = this.invoiceId;
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
}

class Invoice {
  double total;
  double subTotal;
  double tax;
  double totalWithTax;
  double discount;
  int deliveryPrice;
  int userId;
  String updatedAt;
  String createdAt;
  int id;

  Invoice(
      {this.total,
        this.subTotal,
        this.tax,
        this.totalWithTax,
        this.discount,
        this.deliveryPrice,
        this.userId,
        this.updatedAt,
        this.createdAt,
        this.id});

  Invoice.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    subTotal = json['sub_total'];
    tax = json['tax'];
    totalWithTax = json['total_with_tax'];
    discount = json['discount'];
    deliveryPrice = json['delivery_price'];
    userId = json['user_id'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this.total;
    data['sub_total'] = this.subTotal;
    data['tax'] = this.tax;
    data['total_with_tax'] = this.totalWithTax;
    data['discount'] = this.discount;
    data['delivery_price'] = this.deliveryPrice;
    data['user_id'] = this.userId;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    return data;
  }
}