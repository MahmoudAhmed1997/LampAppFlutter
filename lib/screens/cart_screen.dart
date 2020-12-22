import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/screens/orders_first_screen.dart';
import 'package:lamp/screens/orders_list.dart';
import 'package:lamp/widgets/bottomAppBarItems.dart';
import 'package:lamp/widgets/prod.dart';


class CartsScreen extends StatefulWidget {
  static const routeName = '/cart_screen';

  @override
  _CartsScreenState createState() => _CartsScreenState();
}

class _CartsScreenState extends State<CartsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 30,height: 30,),

                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "سلة المشتريات",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Color(0xff18304B)),
                                  ),
                                ],
                              ),
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "منتجات 03",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff7F8FA6)),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SvgPicture.asset("assets/icons/delete_button.svg"),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 1000,
                  child: ListView(scrollDirection: Axis.vertical, children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Prod(
                          widthCard: 165,
                          widthButton: 167,
                          index: 1,
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Prod(
                          widthCard: 165,
                          widthButton: 167,
                          index: 2,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 33,
                    ),

                  ]),
                ),
              ],
            ),
          ),
          Positioned(
            right: 30,
            left: 30,
            bottom: 15,
            child: Row(
              children: [
                Container(
                  width: 206,
                  height: 56,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),                    color: Color(0xff7F8FA6),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "الإجمالي",
                        style: TextStyle(color: Colors.white,fontSize: 17),
                      ),
                      Text(
                        "500 ر.س",
                        style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 6,),

                Container(
                  width: 136,
                  height: 56,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                    color: Color(0xff00B5F0),
                    child: Text(
                      "إتمام الطلب",
                      style: TextStyle(color: Colors.white,fontSize: 16),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OrdersFirstScreen()));
                    },
                  ),
                ),

              ],
            ),
          ),

        ]),
      ),
    );
  }
}
