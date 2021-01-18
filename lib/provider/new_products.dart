import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:lamp/provider/product.dart';
import 'package:http/http.dart' as http;
import 'new_product.dart';
import 'package:lamp/provider/designer.dart';

class NewProducts with ChangeNotifier {

  List<NewProduct> _newProductList = new List<NewProduct>();

  List<NewProduct> get newProductList {
    return _newProductList;
  }

  Future<void> fetchAndSetNewProducts() async {
    final url = 'http://lampnow.sa.com/api/v1/home';
    try {
      final response = await http.get(url);
      final extractedData = json.decode(response.body)['newProducts']as List<dynamic>;
      if (extractedData == null) {
        return;
      }

      // final List<Designer> loadedDesigners = [];
      // _designerList = new List<Designer>();
      for(var data in extractedData){
        // loadedDesigners.add(Designer.fromJson(data));
        // print(Designer.fromJson(data));
        // _designerList.add(Designer.fromJson(data));
        _newProductList.add(NewProduct(id:data['id'],frontImg: data['front_img'],backImg: data['back_img']));
      }

      // extractedData.forEach((prodId, prodData) {
      //   _designerList.add(Designer(
      //     id: prodData['id'],
      //     name: prodData['user']['name'],
      //     img: prodData['img'],
      //   ));
      // });
      // designerList = loadedDesigners;
      notifyListeners();


      // print("extractedData: " + extractedData.toString());
      // print("designerList: " + designerList.toString());
      //print(designerList.length);
      // Designer designer = designerList[0];
      //  for(Designer designer in designerList){
      // print(designer.name);
      // print(designer.img);
      // }
      // print(loadedDesigners.length);
      // print(extractedData);

    } catch (error) {
      throw (error);
    }
  }


  // Future<void> fetchAndSetProducts() async {
  //   final url = 'http://lampnow.sa.com/api/v1/home';
  //   try {
  //     final response = await http.get(url);
  //     final extractedData = json.decode(response.body)['designers']as List<dynamic>;
  //     if (extractedData == null) {
  //       return;
  //     }
  //
  //     // final List<Designer> loadedDesigners = [];
  //     // _designerList = new List<Designer>();
  //     for(var data in extractedData){
  //       // loadedDesigners.add(Designer.fromJson(data));
  //       // print(Designer.fromJson(data));
  //       // _designerList.add(Designer.fromJson(data));
  //       _designerList.add( new Designer(id:data['id'], name: data['user']['name'], img:data['img']));
  //     }
  //
  //     // extractedData.forEach((prodId, prodData) {
  //     //   _designerList.add(Designer(
  //     //     id: prodData['id'],
  //     //     name: prodData['user']['name'],
  //     //     img: prodData['img'],
  //     //   ));
  //     // });
  //     // designerList = loadedDesigners;
  //     notifyListeners();
  //
  //
  //     // print("extractedData: " + extractedData.toString());
  //     // print("designerList: " + designerList.toString());
  //     //print(designerList.length);
  //     // Designer designer = designerList[0];
  //     //  for(Designer designer in designerList){
  //     // print(designer.name);
  //     // print(designer.img);
  //     // }
  //     // print(loadedDesigners.length);
  //     // print(extractedData);
  //
  //   } catch (error) {
  //     throw (error);
  //   }
  // }


}
