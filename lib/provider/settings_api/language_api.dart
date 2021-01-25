import 'package:lamp/constants.dart' as cons;
import 'dart:convert';
import 'package:http/http.dart' as http;


class LanguageApi {
  Languages languages;

  LanguageApi({this.languages});

  LanguageApi.fromJson(Map<String, dynamic> json) {
    languages = json['languages'] != null
        ? new Languages.fromJson(json['languages'])
        : null;
  }
  Future<LanguageApi> fetchLanguage() async {
    final url = '${cons.Constants.apiUrl}/languages';

    final response = await http.get(url);

    if (response.statusCode == 200) {

      print("Lang is ${response.body}");

      return LanguageApi.fromJson(jsonDecode(response.body));
    } else {
      print("about error ${response.body}");

      throw Exception('Failed to load album');
    }
  }

}

class Languages {
  En en;
  En ar;

  Languages({this.en, this.ar});

  Languages.fromJson(Map<String, dynamic> json) {
    en = json['en'] != null ? new En.fromJson(json['en']) : null;
    ar = json['ar'] != null ? new En.fromJson(json['ar']) : null;
  }

  @override
  String toString() {
    return 'en: $en, ar: $ar';
  }

}

class En {
  String name;
  String nameKey;
  String icon;
  String frontIcon;
  String direction;

  En({this.name, this.nameKey, this.icon, this.frontIcon, this.direction});

  En.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    nameKey = json['name_key'];
    icon = json['icon'];
    frontIcon = json['front_icon'];
    direction = json['direction'];
  }

}
