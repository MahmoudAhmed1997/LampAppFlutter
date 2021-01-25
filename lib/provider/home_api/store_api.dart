class StoreApi {
  Store store;
  List<Products> products;

  StoreApi({this.store, this.products});

  StoreApi.fromJson(Map<String, dynamic> json) {
    store = json['store'] != null ? new Store.fromJson(json['store']) : null;
    if (json['products'] != null) {
      products = new List<Products>();
      json['products'].forEach((v) {
        products.add(new Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.store != null) {
      data['store'] = this.store.toJson();
    }
    if (this.products != null) {
      data['products'] = this.products.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Store {
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
  List<TranslationsStore> translations;

  Store(
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

  Store.fromJson(Map<String, dynamic> json) {
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
      translations = new List<TranslationsStore>();
      json['translations'].forEach((v) {
        translations.add(new TranslationsStore.fromJson(v));
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

class TranslationsStore {
  int id;
  int storeId;
  String name;
  String details;
  String locale;
  Null createdAt;
  Null updatedAt;

  TranslationsStore(
      {this.id,
        this.storeId,
        this.name,
        this.details,
        this.locale,
        this.createdAt,
        this.updatedAt});

  TranslationsStore.fromJson(Map<String, dynamic> json) {
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

class Products {
  int id;
  String thumbnails;
  int isPublished;
  int categoryId;
  double price;
  int storeId;
  int viewsCount;
  String frontImg;
  String backImg;
  String createdAt;
  String updatedAt;
  Discount discount;
  double discountPrice;
  int ordersCount;
  Category category;
  List<AttributesValues> attributesValues;
  double priceWithDiscount;
  String name;
  String details;
  List<TranslationsProduct> translations;

  Products(
      {this.id,
        this.thumbnails,
        this.isPublished,
        this.categoryId,
        this.price,
        this.storeId,
        this.viewsCount,
        this.frontImg,
        this.backImg,
        this.createdAt,
        this.updatedAt,
        this.discount,
        this.discountPrice,
        this.ordersCount,
        this.category,
        this.attributesValues,
        this.priceWithDiscount,
        this.name,
        this.details,
        this.translations});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    thumbnails = json['thumbnails'];
    isPublished = json['is_published'];
    categoryId = json['category_id'];
    price = json['price'];
    storeId = json['store_id'];
    viewsCount = json['views_count'];
    frontImg = json['front_img'];
    backImg = json['back_img'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    discount = json['discount'] != null
        ? new Discount.fromJson(json['discount'])
        : null;
    discountPrice = json['discount_price'];
    ordersCount = json['orders_count'];
    category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
    if (json['attributesValues'] != null) {
      attributesValues = new List<AttributesValues>();
      json['attributesValues'].forEach((v) {
        attributesValues.add(new AttributesValues.fromJson(v));
      });
    }
    priceWithDiscount = json['price_with_discount'];
    name = json['name'];
    details = json['details'];
    if (json['translations'] != null) {
      translations = new List<TranslationsProduct>();
      json['translations'].forEach((v) {
        translations.add(new TranslationsProduct.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['thumbnails'] = this.thumbnails;
    data['is_published'] = this.isPublished;
    data['category_id'] = this.categoryId;
    data['price'] = this.price;
    data['store_id'] = this.storeId;
    data['views_count'] = this.viewsCount;
    data['front_img'] = this.frontImg;
    data['back_img'] = this.backImg;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.discount != null) {
      data['discount'] = this.discount.toJson();
    }
    data['discount_price'] = this.discountPrice;
    data['orders_count'] = this.ordersCount;
    if (this.category != null) {
      data['category'] = this.category.toJson();
    }
    if (this.attributesValues != null) {
      data['attributesValues'] =
          this.attributesValues.map((v) => v.toJson()).toList();
    }
    data['price_with_discount'] = this.priceWithDiscount;
    data['name'] = this.name;
    data['details'] = this.details;
    if (this.translations != null) {
      data['translations'] = this.translations.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Discount {
  int id;
  int productId;
  double rate;
  double price;
  String discountType;
  int isPublished;
  String startAt;
  String endAt;
  String createdAt;
  String updatedAt;

  Discount(
      {this.id,
        this.productId,
        this.rate,
        this.price,
        this.discountType,
        this.isPublished,
        this.startAt,
        this.endAt,
        this.createdAt,
        this.updatedAt});

  Discount.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productId = json['product_id'];
    rate = json['rate'];
    price = json['price'];
    discountType = json['discount_type'];
    isPublished = json['is_published'];
    startAt = json['start_at'];
    endAt = json['end_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['product_id'] = this.productId;
    data['rate'] = this.rate;
    data['price'] = this.price;
    data['discount_type'] = this.discountType;
    data['is_published'] = this.isPublished;
    data['start_at'] = this.startAt;
    data['end_at'] = this.endAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Category {
  int id;
  Null parentId;
  String createdAt;
  String updatedAt;
  String name;
  List<TranslationsCategory> translations;

  Category(
      {this.id,
        this.parentId,
        this.createdAt,
        this.updatedAt,
        this.name,
        this.translations});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    parentId = json['parent_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    name = json['name'];
    if (json['translations'] != null) {
      translations = new List<TranslationsCategory>();
      json['translations'].forEach((v) {
        translations.add(new TranslationsCategory.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['parent_id'] = this.parentId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['name'] = this.name;
    if (this.translations != null) {
      data['translations'] = this.translations.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TranslationsCategory {
  int id;
  int categoryId;
  String name;
  String locale;
  Null createdAt;
  Null updatedAt;

  TranslationsCategory(
      {this.id,
        this.categoryId,
        this.name,
        this.locale,
        this.createdAt,
        this.updatedAt});

  TranslationsCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryId = json['category_id'];
    name = json['name'];
    locale = json['locale'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category_id'] = this.categoryId;
    data['name'] = this.name;
    data['locale'] = this.locale;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class AttributesValues {
  int id;
  List<String> value;
  int attributeId;
  int productId;
  Null createdAt;
  Null updatedAt;
  Attribute attribute;
  String name;
  String type;

  AttributesValues(
      {this.id,
        this.value,
        this.attributeId,
        this.productId,
        this.createdAt,
        this.updatedAt,
        this.attribute,
        this.name,
        this.type});

  AttributesValues.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    value = json['value'].cast<String>();
    attributeId = json['attribute_id'];
    productId = json['product_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    attribute = json['attribute'] != null
        ? new Attribute.fromJson(json['attribute'])
        : null;
    name = json['name'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['value'] = this.value;
    data['attribute_id'] = this.attributeId;
    data['product_id'] = this.productId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.attribute != null) {
      data['attribute'] = this.attribute.toJson();
    }
    data['name'] = this.name;
    data['type'] = this.type;
    return data;
  }
}

class Attribute {
  int id;
  String type;
  String createdAt;
  String updatedAt;
  String name;
  List<TranslationsAttribute> translations;

  Attribute(
      {this.id,
        this.type,
        this.createdAt,
        this.updatedAt,
        this.name,
        this.translations});

  Attribute.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    name = json['name'];
    if (json['translations'] != null) {
      translations = new List<TranslationsAttribute>();
      json['translations'].forEach((v) {
        translations.add(new TranslationsAttribute.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['name'] = this.name;
    if (this.translations != null) {
      data['translations'] = this.translations.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TranslationsAttribute {
  int id;
  String name;
  int attributeId;
  String locale;
  Null createdAt;
  Null updatedAt;

  TranslationsAttribute(
      {this.id,
        this.name,
        this.attributeId,
        this.locale,
        this.createdAt,
        this.updatedAt});

  TranslationsAttribute.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    attributeId = json['attribute_id'];
    locale = json['locale'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['attribute_id'] = this.attributeId;
    data['locale'] = this.locale;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class TranslationsProduct {
  int id;
  String name;
  String details;
  int productId;
  String locale;
  Null createdAt;
  Null updatedAt;

  TranslationsProduct(
      {this.id,
        this.name,
        this.details,
        this.productId,
        this.locale,
        this.createdAt,
        this.updatedAt});

  TranslationsProduct.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    details = json['details'];
    productId = json['product_id'];
    locale = json['locale'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['details'] = this.details;
    data['product_id'] = this.productId;
    data['locale'] = this.locale;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}