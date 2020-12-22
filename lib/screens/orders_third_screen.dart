import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/screens/success_order_screen.dart';
import 'package:lamp/widgets/addrss_card.dart';
import 'package:lamp/widgets/pay_card.dart';


class OrdersThirdScreen extends StatefulWidget {
  static const routeName = '/order_third_screen';

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
                Padding(
                  padding: const EdgeInsets.only(top:28.0),
                  child: Container(
                    width: double.infinity,
                    height: 98,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:5.0,right: 20,left: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap:(){Navigator.of(context).pop();},

                                    child: SvgPicture.asset(
                                      "assets/images/right_button.svg",
                                    ),
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
                              Padding(
                                padding: const EdgeInsets.only(left:18.0),
                                child: Text(
                                  "الشحن والدفع",
                                  style: TextStyle(
                                      fontSize: 14, color: Color(0xff464451)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15,),
                        Container(
                            height:15 ,width: 257,

                            child: SvgPicture.asset("assets/images/progress3.svg"))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(left: 18, right: 22, top: 18,bottom: 15),
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
          bottom: 30,
          right: 33,
          left: 33,
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SuccessOrderScreen()));
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xff00B5F0)),
              // width: 330,
              height: 54,
              child: Center(
                child: Text(
                  "إتمام الطلب",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
        ),

      ]),
    );
  }
}
