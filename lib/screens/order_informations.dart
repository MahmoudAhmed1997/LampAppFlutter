import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/screens/order_adress_screen.dart';
import 'package:lamp/screens/order_information_screen.dart';
import 'package:lamp/screens/orders_list.dart';
import 'package:lamp/screens/receipt_order.dart';
import 'package:lamp/widgets/order_card.dart';
import 'package:lamp/widgets/product_card_order.dart';

class OrderInformation extends StatelessWidget {
  static const routeName = '/order_informations';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      child: InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OrdersListScreen()));
                          },
                          child: SvgPicture.asset("assets/icons/button_right.svg"))),
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
                        unselectedLabelColor: Color(0xff7F8FA6),
                        labelColor: Color(0xff00B5F0),
                        labelStyle: TextStyle(fontSize: 14),
                        tabs: [
                          Tab(
                            child: Text(
                              "معلومات",

                            ),
                          ),
                          Tab(
                            child: Text(
                              "المنتجات",

                            ),
                          ),
                          Tab(
                            child: Text(
                              "العنوان",

                            ),
                          ),
                          Tab(
                            child: Text(
                              "ايصال الطلب",

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
            ));
  }
}
