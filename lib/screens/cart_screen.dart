import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/widgets/appbar_widgets.dart';
import 'package:lamp/widgets/prod.dart';

class CartsScreen extends StatefulWidget {
  @override
  _CartsScreenState createState() => _CartsScreenState();
}

class _CartsScreenState extends State<CartsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 109,
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
                              padding: const EdgeInsets.only(top: 8.0),
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
                            SizedBox(
                              height: 2.0,
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
                          widthCard: 180,
                          widthButton: 167,
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Prod(
                          widthCard: 180,
                          widthButton: 167,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 33,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Prod(
                          widthCard: 180,
                          widthButton: 167,
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Prod(
                          widthCard: 180,
                          widthButton: 167,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 33,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Prod(
                          widthCard: 180,
                          widthButton: 167,
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Prod(
                          widthCard: 180,
                          widthButton: 167,
                        ),
                      ],
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
