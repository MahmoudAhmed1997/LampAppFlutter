import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/screens/orders_third_screen.dart';
import 'package:lamp/widgets/addrss_card.dart';
import 'package:lamp/widgets/product_card.dart';
import 'package:lamp/localization/language_constants.dart';

class OrdersSecondScreen extends StatefulWidget {
  static const routeName = '/order_second_screen';

  @override
  _OrdersSecondScreenState createState() => _OrdersSecondScreenState();
}

class _OrdersSecondScreenState extends State<OrdersSecondScreen> {
  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(overflow: Overflow.visible, fit: StackFit.expand, children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Container(
                  width: double.infinity,
                  height: 98,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 5.0, right: 20, left: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                    child:myLocale.languageCode=="ar"?
                                    SvgPicture.asset(
                                      "assets/images/right_button.svg",
                                    ):
                                    SvgPicture.asset(
                                      "assets/images/btn_left.svg",
                                    )
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  getTranslated(context, "complete_order"),
                                  style: TextStyle(
                                      fontSize: 16, color: Color(0xff464451)),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text(
                                getTranslated(context, "delivery_address"),
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xff464451)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                          height: 15,
                          width: 257,
                          child:
                          myLocale.languageCode=="ar"?
                          SvgPicture.asset("assets/images/progress2.svg"):
                          SvgPicture.asset("assets/images/progress2_en.svg")
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 22, top: 18),
                child: Text(
                  getTranslated(context, "select_delivery_address"),
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
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            getTranslated(context, "new_delivery_address"),
                            style: TextStyle(
                                color: Color(0xff464451), fontSize: 16),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0,right: 18),
                            child: Stack(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  child: ImageIcon(
                                    AssetImage("assets/icons/background.png"),
                                    color: Color(0xffE6EAFC),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(14.0),
                                  child:
                                  myLocale.languageCode=="ar"?
                                  ImageIcon(
                                    AssetImage("assets/icons/left_arrow.png"),
                                    color: Color(0xff464451),
                                    size: 10,
                                  ):   ImageIcon(
                                    AssetImage("assets/icons/arrow.png"),
                                    color: Color(0xff464451),
                                    size: 10,
                                  )
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
        Positioned(
          bottom: 30,
          right: 33,
          left: 33,
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => OrdersThirdScreen()));
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xff00B5F0)),
              // width: 330,
              height: 54,
              child: Center(
                child: Text(
                  getTranslated(context, "next"),
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
