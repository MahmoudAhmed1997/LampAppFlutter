// import 'dart:convert';
//
// import 'package:flutter/cupertino.dart';
// import 'package:lamp/provider/product.dart';
// import 'package:http/http.dart' as http;
//
// import 'package:lamp/provider/order.dart';
// import 'package:lamp/provider/designer.dart';
//
// class Orders {
//
//   List<Order> _ordersList = new List<Order>();
//
//   List<Order> get ordersList {
//     return _ordersList;
//   }
//
//   Future<void> fetchAndSetOrders() async {
//     final url = 'http://lampnow.sa.com/api/v1/orders/1';
//     try {
//       final response = await http.get(url,headers:{
//         "Accept":"application/json",
//         "Content-Type":"application/json",
//         "Authorization" :"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiYTI1NDE4NTVlZjExNjcwOTNiODVkMTE1N2Y4Njk3NjAzNGZhZDIwODM1MmU0ZGRhZDMxZGNmMjQzOTdlMjVlMjk4ZDA4NDRlMGRhZmQ5ZDMiLCJpYXQiOiIxNjExMjM0NTk5LjEwODIxOSIsIm5iZiI6IjE2MTEyMzQ1OTkuMTA4MjI4IiwiZXhwIjoiMTY0Mjc3MDU5OS4xMDI3MTciLCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.DKX93WuRHa8-Xp2bSpmDBPfPopJnwO50B-drZiG6fcXahF7_uJ2j99IsKGHAlV6wS_wpA65WlDv9NPuuLjA_fKQbz0ILjM9nY4tdUnM6qdceqVoWp4goDPgwADEBHa68Bfu3BRRgXGuw-z4_OLGLp5LJAZhLlSmLCcX-qSu_rwzqOygpE4KuPkTqz7sg-VKPYlGPMcj3AX0RwYzJzU78bLYIaNEiLi2-opKOao8kez-6FaMtMfxgL2dPdphgieM2EcGq-oWPpyLOfKz7BaNCtKYSQzU_X-p9EEiJscqim0xLdleLF7NLom_4ss_QmlX3IEt0XpbLpl3t0E7eqYTBusZxoJFzBBG0TpxWmKNWyM7ignlRqf4f5ZE4uq69mdAGAJ1QxYtO8Kvg_7GAWgQPlwHwoCuhy5dqizuwqQcJ-PO9-lEIhzZ9EPeUEekac0yRqBr9sVRMp7b2zs2Gaum-Tb_RQjELIWahxH3gxFf9_U2lKxoa3_cq5bZJfYopZtsBdOCyqQ3eusiv_aYUGYu94DmdVEXOrHHLnJJEEeXQmXoH7mdg4PrY_KKjqF6GEuGU1DFEp7TMqH05JWqCGq4vl9vF41kA1Fnh5A4oCy3FyayqM5ivE41mOFqrUPui6XHZapcPsW7S_jChFPxs7m476NPD03KuiTi__fMH3-6jrH4"
//       });
//       final extractedData = json.decode(response.body)['orders']as List<dynamic>;
//       print(extractedData);
//       if (extractedData == null) {
//         return;
//       }
//
//       // final List<Designer> loadedDesigners = [];
//       // _designerList = new List<Designer>();
//       for(var data in extractedData){
//         // loadedDesigners.add(Designer.fromJson(data));
//         // print(Designer.fromJson(data));
//         // _designerList.add(Designer.fromJson(data));
//         _ordersList.add( new Order(id:data['id'],status:data['status']));
//       }
//
//
//       // extractedData.forEach((prodId, prodData) {
//       //   _designerList.add(Designer(
//       //     id: prodData['id'],
//       //     name: prodData['user']['name'],
//       //     img: prodData['img'],
//       //   ));
//       // });
//       // designerList = loadedDesigners;
//      // notifyListeners();
//
//
//       // print("extractedData: " + extractedData.toString());
//       // print("designerList: " + designerList.toString());
//       //print(designerList.length);
//       // Designer designer = designerList[0];
//       //  for(Designer designer in designerList){
//       // print(designer.name);
//       // print(designer.img);
//       // }
//       // print(loadedDesigners.length);
//       // print(extractedData);
//
//     } catch (error) {
//       throw (error);
//     }
//   }
//
// }
