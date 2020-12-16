import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/widgets/addrss_card.dart';
import 'package:lamp/widgets/pay_card.dart';


class OrdersThirdScreen extends StatefulWidget {
  @override
  _OrdersThirdScreenState createState() => _OrdersThirdScreenState();
}

class _OrdersThirdScreenState extends State<OrdersThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                          "الشحن والدفع",
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
                    "اختر طريقة الدفع",
                    style: TextStyle(fontSize: 15, color: Color(0xff323643)),
                  ),
                ),

                Center(
                  child: PayCard(),


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
