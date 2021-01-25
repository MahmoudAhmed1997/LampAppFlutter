import 'package:http/http.dart' as http;
import 'package:lamp/constants.dart' as cons;
import 'dart:convert';

class GeneralSettingsApi {
  Settings settings;

  GeneralSettingsApi({this.settings});

  GeneralSettingsApi.fromJson(Map<String, dynamic> json) {
    settings = json['settings'] != null
        ? new Settings.fromJson(json['settings'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.settings != null) {
      data['settings'] = this.settings.toJson();
    }
    return data;
  }
  Future<GeneralSettingsApi> fetchGeneralSettingsApi() async {
    final url = '${cons.Constants.apiUrl}/settings';

    final response = await http.get(url);

    if (response.statusCode == 200) {

      print("settings ${response.body}");

      return GeneralSettingsApi.fromJson(jsonDecode(response.body));
    } else {
      print("settings error ${response.body}");

      throw Exception('Failed to load album');
    }
  }

}

class Settings {
  String tax;
  Coordinates coordinates;
  String iosAppLink;
  String androidAppLink;
  String phone;
  String email;
  String address;
  String whatsappNumber;
  String facebookAccount;
  String twitterAccount;
  String snapchatAccount;
  String instagramAccount;
  String telegramAccount;
  String vatNumber;

  Settings(
      {this.tax,
        this.coordinates,
        this.iosAppLink,
        this.androidAppLink,
        this.phone,
        this.email,
        this.address,
        this.whatsappNumber,
        this.facebookAccount,
        this.twitterAccount,
        this.snapchatAccount,
        this.instagramAccount,
        this.telegramAccount,
        this.vatNumber});

  Settings.fromJson(Map<String, dynamic> json) {
    tax = json['tax'];
    coordinates = json['coordinates'] != null
        ? new Coordinates.fromJson(json['coordinates'])
        : null;
    iosAppLink = json['ios_app_link'];
    androidAppLink = json['android_app_link'];
    phone = json['phone'];
    email = json['email'];
    address = json['address'];
    whatsappNumber = json['whatsapp_number'];
    facebookAccount = json['facebook_account'];
    twitterAccount = json['twitter_account'];
    snapchatAccount = json['snapchat_account'];
    instagramAccount = json['instagram_account'];
    telegramAccount = json['telegram_account'];
    vatNumber = json['vat_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tax'] = this.tax;
    if (this.coordinates != null) {
      data['coordinates'] = this.coordinates.toJson();
    }
    data['ios_app_link'] = this.iosAppLink;
    data['android_app_link'] = this.androidAppLink;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['address'] = this.address;
    data['whatsapp_number'] = this.whatsappNumber;
    data['facebook_account'] = this.facebookAccount;
    data['twitter_account'] = this.twitterAccount;
    data['snapchat_account'] = this.snapchatAccount;
    data['instagram_account'] = this.instagramAccount;
    data['telegram_account'] = this.telegramAccount;
    data['vat_number'] = this.vatNumber;
    return data;
  }
}

class Coordinates {
  double lat;
  double lng;

  Coordinates({this.lat, this.lng});

  Coordinates.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lng = json['lng'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lat'] = this.lat;
    data['lng'] = this.lng;
    return data;
  }
}