import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lamp/widgets/order_card.dart';
import 'package:lamp/provider/orders.dart';
import 'package:lamp/localization/language_constants.dart';


class OrdersListScreen extends StatelessWidget {
  static const routeName = '/order_list_screen';
  Orders orders =Orders();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Color(0xff00B5F0),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text( getTranslated(context, "orders_list"),
                style: TextStyle(fontSize: 17),),
                ],
              ),
            ),

            body: DefaultTabController(
              length: 2,
              child: Column(children: <Widget>[
                Container(
                  constraints: BoxConstraints(maxHeight: 150.0),
                  child: Material(
                    color: Colors.white,
                    child: TabBar(
                      labelColor: Color(0xff00B5F0),
                      indicatorColor: Color(0xff00B5F0),

                      unselectedLabelColor: Color(0xff7F8FA6),
                      tabs: [
                        Tab(
                          child:
                          Text(
                            getTranslated(context, "previous_orders"),
                          ),
                        ),
                        Tab(
                          child: Text(
                              getTranslated(context, "current_orders")

                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Hero(
                        tag: "ordercard",
                        child: Center(
                            child: Container(
                              height: 1000,
                              width: 370,
                              child: ListView.builder(
                                itemCount: orders.orders_now.length,
                                itemBuilder: (context,index){
                                  return OrderCard(text: orders.orders_now[index].status,colorBt: orders.orders_now[index].colorBt,colorTextBt: orders.orders_now[index].colorTextBt,);
                                },

                              ),
                            )),
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
                                    itemCount: orders.order_previos.length,
                                    itemBuilder: (context,index){
                                      return OrderCard(text: orders.order_previos[index].status,colorBt: orders.order_previos[index].colorBt,colorTextBt: orders.order_previos[index].colorTextBt,);
                                    },

                                  ),
                                ))),
                      ),
                      // Hero(
                      //   tag: "ordercard",
                      //   child: Center(
                      //       child: Directionality(
                      //           textDirection: TextDirection.rtl,
                      //           child: Container(
                      //             height: 1000,
                      //             width: 370,
                      //             child: ListView.builder(
                      //               itemCount: orders.order_previos.length,
                      //               itemBuilder: (context,index){
                      //                 return OrderCard();
                      //               },
                      //
                      //             ),
                      //           ))),
                      // ),
                    ],
                  ),
                ),
              ]),
            ));
  }
}
