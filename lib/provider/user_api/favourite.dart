class FavouriteApi {
  List<Products> products;

  FavouriteApi({this.products});

  FavouriteApi.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      products = new List<Products>();
      json['products'].forEach((v) {
        products.add(new Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.products != null) {
      data['products'] = this.products.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  int id;
  int productId;
  int userId;
  Null createdAt;
  Null updatedAt;
  Product product;

  Products(
      {this.id,
        this.productId,
        this.userId,
        this.createdAt,
        this.updatedAt,
        this.product});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productId = json['product_id'];
    userId = json['user_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    product =
    json['product'] != null ? new Product.fromJson(json['product']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['product_id'] = this.productId;
    data['user_id'] = this.userId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.product != null) {
      data['product'] = this.product.toJson();
    }
    return data;
  }
}

class Product {
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
  List<Translations> translations;

  Product(
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

  Product.fromJson(Map<String, dynamic> json) {
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
      translations = new List<Translations>();
      json['translations'].forEach((v) {
        translations.add(new Translations.fromJson(v));
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
  Null rate;
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

class Translations {
  int id;
  String name;
  String details;
  int productId;
  String locale;
  Null createdAt;
  Null updatedAt;

  Translations(
      {this.id,
        this.name,
        this.details,
        this.productId,
        this.locale,
        this.createdAt,
        this.updatedAt});

  Translations.fromJson(Map<String, dynamic> json) {
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