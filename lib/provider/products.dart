import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:lamp/provider/product.dart';

class Products {
  List<Product> _products_list = [
    Product(id: "a",imagePath: "assets/images/t_shirt2.png"),
    Product(id: "b",imagePath: "assets/images/t_shirt.png"),
    Product(id: "b",imagePath: "assets/images/t_shirt.png"),
    Product(id: "b",imagePath: "assets/images/t_shirt.png"),
    Product(id: "b",imagePath: "assets/images/t_shirt.png"),


  ];
  List<Product> get products_list  {
    return _products_list ;
  }
  Product findById(String id) {
    return _products_list.firstWhere((pro) => pro.id == id);
  }
}

