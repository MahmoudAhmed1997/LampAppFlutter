import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/widgets/addrss_card.dart';
import 'package:lamp/widgets/product_card.dart';


class OrdersSecondScreen extends StatefulWidget {
  @override
  _OrdersSecondScreenState createState() => _OrdersSecondScreenState();
}

class _OrdersSecondScreenState extends State<OrdersSecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(overflow: Overflow.visible, fit: StackFit.expand, children: [
        Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 80,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/images/right_button.svg",
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              "اتمام الطلب",
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xff464451)),
                            ),
                          ],
                        ),
                        Text(
                          "عنوان التوصيل",
                          style: TextStyle(
                              fontSize: 12, color: Color(0xff464451)),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(left: 18, right: 22, top: 18),
                  child: Text(
                    "اختر عنوان التوصيل",
                    style: TextStyle(fontSize: 15, color: Color(0xff323643)),
                  ),
                ),

                Center(
                  child: AddressCard(),


                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      color: Color(0xffF9F9FF),
                      elevation: 0.0,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Container(

                        width: 330,
                        height: 54,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: 30,),

                            Text(
                              "عنوان توصيل جديد",
                              style: TextStyle(color: Color(0xff464451), fontSize: 16),
                              ),
                            Padding(
                              padding: const EdgeInsets.only(left:18.0),
                              child: Stack(
                                children: [
                                  Container(
                                    height: 40,width: 40,

                                    child: ImageIcon(
                                      AssetImage(
                                          "assets/icons/background.png"),
                                      color: Color(0xffE6EAFC),
                                    ),

                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: ImageIcon(

                                      AssetImage(
                                          "assets/icons/left_arrow.png"),
                                      color: Color(0xff464451),
                                      size: 10,


                                    ),
                                  ),
                                ],
                              ),
                            ),


                          ],
                        ),
                      ),
                    ),
                  ],
                ),


              ],

            ),
          ),
        ),
        Positioned(
          bottom: 30,right: 20,left: 20,
          child: Container(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  color: Color(0xff00B5F0),
                  margin: EdgeInsets.symmetric(vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Container(

                    width: 330,
                    height: 54,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "التالي",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

      ]),
    );
  }
}
