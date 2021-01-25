import 'package:lamp/constants.dart' as cons;
import 'package:http/http.dart' as http;
import 'dart:convert';

class PaymentsApi {
  List<Payments> payments;

  PaymentsApi({this.payments});

  PaymentsApi.fromJson(Map<String, dynamic> json) {
    if (json['payments'] != null) {
      payments = new List<Payments>();
      json['payments'].forEach((v) {
        payments.add(new Payments.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.payments != null) {
      data['payments'] = this.payments.map((v) => v.toJson()).toList();
    }
    return data;
  }
  Future<PaymentsApi> fetchPaymentsApi() async {
    final url = '${cons.Constants.apiUrl}/payments';

    final response = await http.get(url);

    if (response.statusCode == 200) {

      print(" PaymentsApi${response.body}");

      return PaymentsApi.fromJson(jsonDecode(response.body));
    } else {
      print("PaymentsApi error ${response.body}");

      throw Exception('Failed to load album');
    }
  }

}

class Payments {
  int id;
  String key;
  String img;
  int isDefault;
  int isActive;
  String createdAt;
  String updatedAt;
  String name;
  String description;
  List<Translations> translations;

  Payments(
      {this.id,
        this.key,
        this.img,
        this.isDefault,
        this.isActive,
        this.createdAt,
        this.updatedAt,
        this.name,
        this.description,
        this.translations});

  Payments.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    key = json['key'];
    img = json['img'];
    isDefault = json['is_default'];
    isActive = json['is_active'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    name = json['name'];
    description = json['description'];
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
    data['key'] = this.key;
    data['img'] = this.img;
    data['is_default'] = this.isDefault;
    data['is_active'] = this.isActive;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['name'] = this.name;
    data['description'] = this.description;
    if (this.translations != null) {
      data['translations'] = this.translations.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Translations {
  int id;
  String name;
  String description;
  String locale;
  int paymentId;

  Translations(
      {this.id, this.name, this.description, this.locale, this.paymentId});

  Translations.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    locale = json['locale'];
    paymentId = json['payment_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['locale'] = this.locale;
    data['payment_id'] = this.paymentId;
    return data;
  }
}