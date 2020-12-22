import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lamp/screens/favourite_screen.dart';
import 'package:lamp/widgets/rating_order.dart';

class OrderInformationScreen extends StatelessWidget {
  static const routeName = '/order_information_screen';

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
     Center(
       child: Column(
          children: [
            // Center(
            //   child: Container(
            //       height: 68,
            //       width: 800,
            //       child: Image(image: AssetImage("assets/images/preparing.png"),fit: BoxFit.fitWidth,)),
            // ),


            Container(
              alignment: AlignmentDirectional.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white),
              height: 404,
              width: 355,
              child: Column(
                mainAxisAlignment:
                MainAxisAlignment.spaceAround,
                children: [

                  Padding(
                    padding: EdgeInsets.only(right: 20,top: 5),

                    child: Row(
                      children: [
                        Container(
                            width: 190,
                            child: Text(
                              "المنتجات",
                              style: TextStyle(
                                  color:
                                  Color(0xff18304B),
                                  fontSize: 15),
                            )),
                        Container(
                          width:130,

                          child: Text(
                            "13",
                            style: TextStyle(
                                color: Color(0xff7F8FA6),
                                fontSize: 15),
                            textDirection:
                            TextDirection.rtl,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.only(right: 20,top: 5),
                    child: Row(
                      children: [
                        Container(
                            width: 190,
                            child: Text(
                              "السعر الاجمالي",
                              style: TextStyle(
                                  color:
                                  Color(0xff18304B),
                                  fontSize: 15),
                            )),
                        Container(
                          width:130,

                          child: Text(
                            "500 رس",
                            style: TextStyle(
                                color: Color(0xff7F8FA6),
                                fontSize: 15),
                            textDirection:
                            TextDirection.rtl,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Divider(),
                  Padding(
                    padding: EdgeInsets.only(right: 20,top: 5),
                    child: Row(
                      children: [
                        Container(
                            width: 190,
                            child: Text(
                              "طريقة الدفع",
                              style: TextStyle(
                                  color:
                                  Color(0xff18304B),
                                  fontSize: 15),
                            )),
                        Container(
                          width:130,

                          child: Text(
                            "بطاقة مدى",
                            style: TextStyle(
                                color: Color(0xff7F8FA6),
                                fontSize: 15),
                            textDirection:
                            TextDirection.rtl,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.only(right: 20,top: 5),
                    child: Row(
                      children: [
                        Container(
                            width: 190,
                            child: Text(
                              "تاريخ الطلب",
                              style: TextStyle(
                                  color:
                                  Color(0xff18304B),
                                  fontSize: 15),
                            )),
                        Container(
                          width:130,

                          child: Text(
                            "20.09.2020, 18:30",
                            style: TextStyle(
                                color: Color(0xff7F8FA6),
                                fontSize: 15),
                            textDirection:
                            TextDirection.rtl,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Divider(),
                  Padding(
                    padding: EdgeInsets.only(right: 20,top: 5),
                    child: Row(
                      children: [
                        Container(
                            width: 190,
                            child: Text(
                              "تاريخ التوصيل",
                              style: TextStyle(
                                  color:
                                  Color(0xff18304B),
                                  fontSize: 15),
                            )),
                        Container(
                          width:130,

                          child: Text(
                            "20.09.2020, 18:30",
                            style: TextStyle(
                                color: Color(0xff7F8FA6),
                                fontSize: 15),
                            textDirection:
                            TextDirection.rtl,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.only(right: 20,top: 5),
                    child: Row(
                      children: [
                        Container(
                            width: 190,
                            child: Text(
                              "المدينة",
                              style: TextStyle(
                                  color:
                                  Color(0xff18304B),
                                  fontSize: 15),
                            )),
                        Container(
                          width:130,

                          child: Text(
                            "الرياض",
                            style: TextStyle(
                                color: Color(0xff7F8FA6),
                                fontSize: 15),
                            textDirection:
                            TextDirection.rtl,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.only(right: 20,top: 5),
                    child: Row(
                      children: [
                        Container(
                            width: 190,
                            child: Text(
                              "الدولة",
                              style: TextStyle(
                                  color:
                                  Color(0xff18304B),
                                  fontSize: 15),
                            )),
                        Container(
                          width:130,

                          child: Text(
                            "السعودية",
                            style: TextStyle(
                                color: Color(0xff7F8FA6),
                                fontSize: 15),
                            textDirection:
                            TextDirection.rtl,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5,)
                ],
              ),
            ),
          ],
        ),
     ),
      Positioned(
        bottom: 30,
        right: 30,
        left: 30,
        child: Padding(
          padding: const EdgeInsets.only(top: 70.0),
          child: Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 158,
                height: 50,
                child: RaisedButton(
                  child: Text(
                    "تقييم الطلب",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                  color: Color(0xffEC3942),
                  shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(12)),
                  onPressed: () {

                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5.0),
                                topRight: Radius.circular(5.0)),
                          ),
                          isScrollControlled: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          isDismissible: true,
                          context: context,
                          builder: (context) => FractionallySizedBox(
                            heightFactor: 0.88,
                            child: RatingOrder(),
                          ));
                    },

                ),
              ),
              Container(
                width: 158,
                height: 50,
                child: RaisedButton(
                  child: Text(
                    "إعادة الطلب",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                  color: Color(0xff00B5F0),
                  shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(12)),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),

    ]);
  }
}
