import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/screens/orders_second_screen.dart';
import 'package:lamp/widgets/appbar_widgets.dart';
import 'package:lamp/widgets/product_card.dart';
import 'package:lamp/widgets/prod.dart';
import 'package:lamp/localization/language_constants.dart';

class OrdersFirstScreen extends StatefulWidget {
  static const routeName = '/order_first_screen';

  @override
  _OrdersFirstScreenState createState() => _OrdersFirstScreenState();
}

class _OrdersFirstScreenState extends State<OrdersFirstScreen> {
  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);

    return Scaffold(
      body: Stack(overflow: Overflow.visible, fit: StackFit.expand, children: [
        ListView(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 98,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, right: 20, left: 25),
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
                              getTranslated(context, "details_order_text"),
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
                           SvgPicture.asset("assets/images/progress1.svg"):
                           SvgPicture.asset("assets/images/progress1_en.svg")
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 18, right: 18, top: 18, bottom: 18),
                child: Text(
                  getTranslated(context, "list_of_purchases"),
                  style: TextStyle(fontSize: 15, color: Color(0xff323643)),
                ),
              ),
              ProductCard(),
              ProductCard(),
              ProductCard(),
              Center(
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Color(0xffF4F4F4))),
                    height: 275,
                    width: 337,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Color(0xffF4F4F4))),
                            child: Center(
                                child: Text(
                              getTranslated(context, "notice_for_order"),
                              style: TextStyle(
                                  color: Color(0xff464451), fontSize: 15),
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: Center(
                                child: Text(
                              getTranslated(context, "need_notify"),
                              style: TextStyle(
                                  color: Color(0xff464451), fontSize: 14),
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 21.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 120,
                                  width: 284,
                                  child: TextFormField(
                                    maxLines: 8,
                                    minLines: 5,
                                    enableInteractiveSelection: false,
                                    style: TextStyle(color: Colors.grey),
                                    key: ValueKey("ملاحظة"),
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return '';
                                      }
                                      return null;
                                    },
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(10),
                                      alignLabelWithHint: true,
                                      filled: true,
                                      fillColor: Color(0xffEBEBEB),
                                      hintText: getTranslated(
                                          context, "write_notice"),
                                      labelStyle: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize: 15),
                                      hintStyle: TextStyle(
                                          color: Color(0xffA4B0BE),
                                          fontSize: 15),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          borderSide: BorderSide.none),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: new BorderSide(
                                            color: Color(0xff18304B)),
                                        borderRadius:
                                            new BorderRadius.circular(12),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ])),
              ),
              Center(
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Color(0xffF4F4F4))),
                    height: 275,
                    width: 337,
                    child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:18.0),
                            child: Center(
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xffF4F4F4))),
                                child: Text(
                                  getTranslated(
                                  context, "coupons_and_discounts"),
                                  style: TextStyle(
                                  color: Color(0xff464451), fontSize: 15),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 23.0,right: 25),
                            child: Text(
                              getTranslated(context, "do_you_have_coupon"),
                              style: TextStyle(
                              color: Color(0xff464451), fontSize: 14),
                              textAlign: TextAlign.right,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 45,
                                  width: 284,
                                  child: TextFormField(
                                    textAlign: TextAlign.center,
                                    enableInteractiveSelection: false,
                                    style: TextStyle(color: Colors.grey),
                                    key: ValueKey("رقم الكوبون"),
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return '';
                                      }
                                      return null;
                                    },
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(10),
                                      alignLabelWithHint: true,
                                      filled: true,
                                      fillColor: Color(0xffEBEBEB),
                                      hintText: getTranslated(
                                          context, "enter_coupon_number"),
                                      hintStyle: TextStyle(
                                          color: Color(0xffA4B0BE),
                                          fontSize: 15),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          borderSide: BorderSide.none),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: new BorderSide(
                                            color: Color(0xff18304B)),
                                        borderRadius:
                                            new BorderRadius.circular(12),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border:
                                      Border.all(color: Color(0xff00B5F0))),
                              width: 280,
                              height: 45,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                color: Colors.white,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      getTranslated(context, "coupon_check"),
                                      style: TextStyle(
                                          color: Color(0xff00B5F0),
                                          fontSize: 14,fontWeight: FontWeight.normal),
                                    ),
                                  ],
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ])),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Color(0xffF4F4F4))),
                    height: 275,
                    width: 337,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Color(0xffF4F4F4))),
                            child: Center(
                                child: Text(
                              getTranslated(context, "order_summary"),
                              style: TextStyle(
                                  color: Color(0xff464451), fontSize: 17),
                            )),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              width: double.infinity,
                              color: Color(0xf18304B),
                              child: Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          getTranslated(
                                              context, "cost_purchases"),
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Color(0xff7F8FA6)),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              " 500 ",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Color(0xff7F8FA6)),
                                            ),
                                            Text( getTranslated(context,
                                              "rs",),   style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xff7F8FA6)),)
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          getTranslated(
                                              context, "cost_purchases"),
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Color(0xff7F8FA6)),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              " 500 ",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Color(0xff7F8FA6)),
                                            ),
                                            Text( getTranslated(context,
                                              "rs",),   style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xff7F8FA6)),)
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          getTranslated(
                                              context, "cost_purchases"),
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Color(0xff7F8FA6)),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              " 500 ",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Color(0xff7F8FA6)),
                                            ),
                                            Text( getTranslated(context,
                                              "rs",),   style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xff7F8FA6)),)
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          getTranslated(context, "total"),
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Color(0xff18304B),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              " 500 ",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  color: Color(0xff18304B),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text( getTranslated(context,
                                              "rs",),
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  color: Color(0xff18304B),
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ])),
              ),
              SizedBox(height: 40,)
            ],
          ),
        ]),
        Positioned(
          left: 20,
          right: 20,
          bottom: 25,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => OrdersSecondScreen()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xff00B5F0),
                  ),
                  width: 330,
                  height: 54,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        getTranslated(context, "next"),
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
