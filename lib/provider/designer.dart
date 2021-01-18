import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

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
