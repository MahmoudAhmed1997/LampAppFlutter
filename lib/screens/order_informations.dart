import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/screens/order_adress_screen.dart';
import 'package:lamp/screens/order_information_screen.dart';
import 'package:lamp/screens/orders_list.dart';
import 'package:lamp/screens/receipt_order.dart';
import 'package:lamp/widgets/order_card.dart';
import 'package:lamp/widgets/product_card_order.dart';
import 'package:lamp/localization/language_constants.dart';

class OrderInformation extends StatelessWidget {
  static const routeName = '/order_informations';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              automaticallyImplyLeading: false,
              backgroundColor: Color(0xff00B5F0),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text( getTranslated(context, "order"), ),

                  Text('51523# '),
                ],
              ),
             leading:
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

            ),
            body: DefaultTabController(
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
                      labelStyle: TextStyle(fontSize: 12),
                      tabs: [
                        Tab(
                          child: Text(
                            getTranslated(context, "information"),
                          ),
                        ),
                        Tab(
                          child: Text(
                            getTranslated(context, "products"),
                          ),
                        ),
                        Tab(
                          child: Text(
                            getTranslated(context, "address"),
                          ),
                        ),
                        Tab(
                          child: Text(
                            getTranslated(context, "rec_order"),
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
            ));
  }
}
