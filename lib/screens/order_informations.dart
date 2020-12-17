import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/widgets/order_card.dart';

class OrderInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Color(0xff00B5F0),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('51523# '),
                  Text(':طلب'),
                ],
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Container(
                      height: 38,
                      width: 38,
                      child: SvgPicture.asset("assets/icons/button_right.svg")),
                )
              ],
            ),
            body: Directionality(
              textDirection: TextDirection.rtl,
              child: DefaultTabController(
                length: 4,
                child: Column(children: <Widget>[
                  Container(
                    constraints: BoxConstraints(maxHeight: 150.0),
                    child: Material(
                      color: Colors.white,
                      child: TabBar(
                        indicatorColor: Color(0xff4A6FF0),
                        tabs: [
                          Tab(
                            child: Text(
                              "معلومات",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff00B5F0)),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "المنتجات",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff383838)),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "العنوان",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff383838)),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "ايصال الطلب",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff383838)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Directionality(
                            textDirection: TextDirection.rtl,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white),
                                    height: 404,
                                    width: 349,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,


                                      children: [

                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                          children: [
                                            Text("المنتجات",style: TextStyle(color: Color(0xff18304B),fontSize: 15),),
                                            Text(
                                              "13",
                                              style: TextStyle(color: Color(0xff7F8FA6),fontSize: 15),
                                              textDirection: TextDirection.rtl,
                                            ),
                                          ],
                                        ),
                                        Divider(),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                          children: [
                                            Text("السعر الاجمالي",style: TextStyle(color: Color(0xff18304B),fontSize: 15),),
                                            Text(
                                              "500 رس",
                                              style: TextStyle(color: Color(0xff7F8FA6),fontSize: 15),
                                              textDirection: TextDirection.rtl,
                                            ),
                                          ],
                                        ),
                                        Divider(),

                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                          children: [
                                            Text("طريقة الدفع",style: TextStyle(color: Color(0xff18304B),fontSize: 15),),
                                            Text(
                                              "بطاقة مدى",
                                              style: TextStyle(color: Color(0xff7F8FA6),fontSize: 15),
                                              textDirection: TextDirection.rtl,
                                            ),
                                          ],
                                        ),
                                        Divider(),

                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                          children: [
                                            Text("تاريخ الطلب ",style: TextStyle(color: Color(0xff18304B),fontSize: 15),),
                                            Text(
                                              "20.09.2020, 18:30",
                                              style: TextStyle(color: Color(0xff7F8FA6),fontSize: 15),
                                              textDirection: TextDirection.rtl,
                                            ),
                                          ],
                                        ),
                                        Divider(),

                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                          children: [
                                            Text("تاريخ التوصيل",style: TextStyle(color: Color(0xff18304B),fontSize: 15),),
                                            Text(
                                              "20.09.2020, 18:30",
                                              style: TextStyle(color: Color(0xff7F8FA6),fontSize: 15),
                                              textDirection: TextDirection.rtl,
                                            ),
                                          ],
                                        ),
                                        Divider(),

                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                          children: [
                                            Text("المدينة",style: TextStyle(color: Color(0xff18304B),fontSize: 15),),
                                            Text(
                                              "الرياض",
                                              style: TextStyle(color: Color(0xff7F8FA6),fontSize: 15),
                                              textDirection: TextDirection.rtl,
                                            ),
                                          ],
                                        ),
                                        Divider(),

                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                          children: [
                                            Text("الدولة",style: TextStyle(color: Color(0xff18304B),fontSize: 15),),
                                            Text(
                                              "السعودية",
                                              style: TextStyle(color: Color(0xff7F8FA6),fontSize: 15),
                                              textDirection: TextDirection.rtl,
                                            ),
                                          ],
                                        ),

                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top:70.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          width: 158,height: 50,
                                          child: RaisedButton(
                                            child: Text("تقييم الطلب",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.white),),
                                            color: Color(0xffEC3942),
                                            shape:
                                            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                            onPressed: (){},
                                          ),
                                        ),
                                        Container(
                                          width: 158,height: 50,
                                          child: RaisedButton(
                                            child: Text("إعادة الطلب",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.white),),
                                            color: Color(0xff00B5F0),
                                            shape:
                                            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                            onPressed: (){},
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            )),
                        Hero(
                          tag: "ordercard",
                          child: Center(
                              child: Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Container(
                                    height: 1000,
                                    width: 370,
                                    child: ListView.builder(
                                      itemCount: 5,
                                      itemBuilder: (context, index) {
                                        return OrderCard();
                                      },
                                    ),
                                  ))),
                        ),
                        Hero(
                          tag: "ordercard",
                          child: Center(
                              child: Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Container(
                                    height: 1000,
                                    width: 370,
                                    child: ListView.builder(
                                      itemCount: 5,
                                      itemBuilder: (context, index) {
                                        return OrderCard();
                                      },
                                    ),
                                  ))),
                        ),
                        Hero(
                          tag: "ordercard",
                          child: Center(
                              child: Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Container(
                                    height: 1000,
                                    width: 370,
                                    child: ListView.builder(
                                      itemCount: 5,
                                      itemBuilder: (context, index) {
                                        return OrderCard();
                                      },
                                    ),
                                  ))),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            )));
  }
}
