import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lamp/widgets/order_card.dart';


class OrdersListScreen extends StatelessWidget {
  static const routeName = '/order_list_screen';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Color(0xff00B5F0),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('قائمة الطلبات',style: TextStyle(fontSize: 17),),
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
                          child: Text(
                            "الطلبات السابقة",
                          ),
                        ),
                        Tab(
                          child: Text(
                            "الطلبات الحالية",


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
                            child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: Container(
                                  height: 1000,
                                  width: 370,
                                  child: ListView.builder(
                                    itemCount: 5,
                                    itemBuilder: (context,index){
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
                                    itemBuilder: (context,index){
                                      return OrderCard();
                                    },

                                  ),
                                ))),
                      ),
                    ],
                  ),
                ),
              ]),
            ));
  }
}
