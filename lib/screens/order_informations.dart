import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/screens/order_adress_screen.dart';
import 'package:lamp/screens/order_information_screen.dart';
import 'package:lamp/screens/receipt_order.dart';
import 'package:lamp/widgets/order_card.dart';
import 'package:lamp/widgets/product_card_order.dart';

class OrderInformation extends StatelessWidget {
  static const routeName = '/order_informations';

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
                        Padding(
                          padding: const EdgeInsets.only(top:12.0),
                          child: OrderInformationScreen()
                        ),
                        Hero(
                          tag: "ordercard",
                          child: Center(
                              child: Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Container(
                                    color: Color(0xffFDFDFF),
                                    height: 1000,
                                    width: 370,
                                    child: ListView.builder(
                                      itemCount: 30,
                                      itemBuilder: (context, index) {
                                        return ProductCardOrder();
                                      },
                                    ),
                                  ))),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top:12.0),
                            child: OrderAddressScreen()
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top:12.0),
                            child: OrderReceiptScreen()
                        ),                       ],
                    ),
                  ),
                ]),
              ),
            )));
  }
}
