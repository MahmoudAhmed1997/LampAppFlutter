import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lamp/widgets/order_card.dart';


class OrdersListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xff00B5F0),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('قائمة الطلبات'),
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
                      indicatorColor: Color(0xff00B5F0),
                      tabs: [
                        Tab(
                          child: Text(
                            "الطلبات المكتملة",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xff4349B5)),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "الطلبات الحالية",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xff383838)),
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
            )));
  }
}
