import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:lamp/provider/product.dart';

import 'designer.dart';

class Designers {
  List<Designer> _designer_list = [
    Designer(id: "a",imagePath: "assets/images/face.png",name: "محمد الخالدي"),
    Designer(id: "b",imagePath: "assets/images/face2.png",name: "محمد الخالدي"),
    Designer(id: "c",imagePath: "assets/images/face3.png",name: "محمد الخالدي"),
    Designer(id: "d",imagePath: "assets/images/face3.png",name: "محمد الخالدي"),
    Designer(id: "e",imagePath: "assets/images/face3.png",name: "محمد الخالدي"),



  ];
  List<Designer> get designers_list  {
    return _designer_list ;
  }
}

