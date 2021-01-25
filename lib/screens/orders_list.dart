import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lamp/widgets/order_card.dart';
import 'package:lamp/provider/orders.dart';
import 'package:lamp/localization/language_constants.dart';
import 'file:///E:/flutter%20sybjects/lamp/lib/provider/orders_api/orders_list_api.dart';
import 'package:lamp/provider/orders.dart';
import 'package:lamp/provider/order.dart';
import 'package:lamp/provider/home_api/stores_api.dart';
class OrdersListScreen extends StatefulWidget {
  static const routeName = '/order_list_screen';

  @override
  _OrdersListScreenState createState() => _OrdersListScreenState();
}

class _OrdersListScreenState extends State<OrdersListScreen> {

  Future<OrdersListApi> fetchOrdersLis;
  OrdersListApi ordersListApi = OrdersListApi();
  StoresApi storesApi = StoresApi();
  Future<StoresApi> fetchStores ;

  @override
  void initState() {
    super.initState();
    print("hjk");
    fetchOrdersLis = ordersListApi.fetchOrdersListApi();
  // fetchStores = storesApi.fetchStores();
    // .then(
    //     (value) => print("Home - Orders: " + orders.ordersList.toString())
  }
  static double checkDouble(dynamic value) {
    if (value is String) {
      return double.parse(value);
    } else {
      return value;
    }
  }

  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xff00B5F0),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                getTranslated(context, "orders_list"),
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
              ),
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
                      child: Text(getTranslated(context, "current_orders")),
                    ),
                    Tab(
                      child: Text(getTranslated(context, "previous_orders"),
                      ),
                    ),
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
                        child: FutureBuilder<OrdersListApi>(
                          future: fetchOrdersLis,
                          builder: (context,snapshot){
                            if(snapshot.hasData) {
                             return Container(
                                height: 1000,
                                width: 370,
                                child: Text("ةة"));
                            }else if(snapshot.hasError){
                              return Text("${snapshot.error}");
                            }
                            return Center(child: CircularProgressIndicator(),);
                          },

                        )),
                  ),

                  Hero(
                    tag: "ordercard",
                    child: Center(
                        child: FutureBuilder<OrdersListApi>(
                          future: fetchOrdersLis,
                          builder: (context,snapshot){
                            if(snapshot.hasData){
                              return ListView.builder(
                                itemCount: 5,
                                itemBuilder: (context, index) {
                                  return Container(
                                    child: Text("jkl"),
                                  );
                                  //   OrderCard(
                                  //   text: orders.ordersList[index].status,
                                  //   colorTextBt: Colors.pink,
                                  //   colorBt: Colors.blue,
                                  //   // text: myLocale.languageCode == "en"
                                  //   //     ? orders.order_previos[index].status_en
                                  //   //     : orders.order_previos[index].status,
                                  //   // colorBt: orders.order_previos[index].colorBt,
                                  //   // colorTextBt:
                                  //   //     orders.order_previos[index].colorTextBt,
                                  // );
                                },
                              );
                            }else if(snapshot.hasError){
                              return Text("${snapshot.error}");
                            }

                            // By default, show a loading spinner.
                            return Center(child: CircularProgressIndicator());
                          },
                      //     child: Container(
                      // height: 1000,
                      // width: 370,
                      // child: ListView.builder(
                      //     itemCount: 5,
                      //     itemBuilder: (context, index) {
                      //       return Container(
                      //         child: Text("jkl"),
                      //       );
                      //       //   OrderCard(
                      //       //   text: orders.ordersList[index].status,
                      //       //   colorTextBt: Colors.pink,
                      //       //   colorBt: Colors.blue,
                      //       //   // text: myLocale.languageCode == "en"
                      //       //   //     ? orders.order_previos[index].status_en
                      //       //   //     : orders.order_previos[index].status,
                      //       //   // colorBt: orders.order_previos[index].colorBt,
                      //       //   // colorTextBt:
                      //       //   //     orders.order_previos[index].colorTextBt,
                      //       // );
                      //     },
                      // ),
                    ),
                        )),


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
