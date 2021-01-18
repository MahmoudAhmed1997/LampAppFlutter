import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class NewProduct with ChangeNotifier{
  int id;
  String frontImg;
  String backImg;

  NewProduct({
    @required this.id,
    @required this.frontImg,
    @required this.backImg,
  });

  NewProduct.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    frontImg= json['front_img'];
    backImg= json['back_img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['front_img'] = this.frontImg;
    data['back_img'] = this.backImg;
    return data;
  }

  @override
  String toString() {
    return 'id: $id, frontImg : $frontImg , backImg : $backImg';
  }
}
