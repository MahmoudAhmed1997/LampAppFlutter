import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lamp/screens/favourite_screen.dart';
import 'package:lamp/widgets/rating_order.dart';
import 'package:lamp/localization/language_constants.dart';
import 'package:lamp/widgets/rang_slider.dart';

class OrderInformationScreen extends StatelessWidget {
  static const routeName = '/order_information_screen';

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Center(
        child: Column(
          children: [
            Center(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20.0, left: 20),
                  child: Text( getTranslated(context, "preparing"),
                  ),
                ),
                SizedBox(height: 12.0,),
                Padding(
                  padding: const EdgeInsets.only(right: 17.0, left: 17),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                            height: 11,
                            width: 11,
                            child: SvgPicture.asset(
                              "assets/icons/ellipse.svg",
                              color: Color(0xff00B5F0),
                            )),
                      ),
                      SvgPicture.asset("assets/icons/line2.svg"),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                            height: 11,
                            width: 11,
                            child: SvgPicture.asset(
                              "assets/icons/ellipse.svg",
                              color: Color(0xff00B5F0),
                            )),
                      ),
                      SvgPicture.asset(
                        "assets/icons/line2.svg",
                        color: Color(0xffBFBFBF),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                            height: 11,
                            width: 11,
                            child: SvgPicture.asset(
                              "assets/icons/ellipse.svg",
                              color: Color(0xff7F8FA6),
                            )),
                      ),
                      SvgPicture.asset(
                        "assets/icons/line2.svg",
                        color: Color(0xffBFBFBF),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                            height: 11,
                            width: 11,
                            child: SvgPicture.asset(
                              "assets/icons/ellipse.svg",
                              color: Color(0xff7F8FA6),
                            )),
                      ),
                    ],
                  ),

                ),
              ],
            )


                ),
            SizedBox(height: 15.0,),
            Container(
              alignment: AlignmentDirectional.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.white),
              height: 404,
              width: 355,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10, top: 5, left: 10),
                    child: Row(
                      children: [
                        Container(
                            width: 170,
                            child: Text(
                              getTranslated(context, "products"),
                              style: TextStyle(
                                  color: Color(0xff18304B), fontSize: 15),
                            )),
                        Container(
                          width: 130,
                          child: Text(
                            "13",
                            style: TextStyle(
                                color: Color(0xff7F8FA6), fontSize: 15),
                            textDirection: TextDirection.rtl,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.only(right: 10, top: 5, left: 10),
                    child: Row(
                      children: [
                        Container(
                            width: 170,
                            child: Text(
                              getTranslated(context, "total_price"),
                              style: TextStyle(
                                  color: Color(0xff18304B), fontSize: 15),
                            )),
                        Container(
                          width: 130,
                          child: Row(
                            children: [
                              Text(
                                " 500 ",
                                style: TextStyle(
                                    color: Color(0xff7F8FA6), fontSize: 15),
                              ),
                              Text( getTranslated(context,
                                "rs",),
                                style: TextStyle(
                                    color: Color(0xff7F8FA6), fontSize: 15),
                              )

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.only(right: 10, top: 5, left: 10),
                    child: Row(
                      children: [
                        Container(
                            width: 170,
                            child: Text(
                              getTranslated(context, "pay_method"),
                              style: TextStyle(
                                  color: Color(0xff18304B), fontSize: 15),
                            )),
                        Container(
                          width: 130,
                          child: Text(
                            "بطاقة مدى",
                            style: TextStyle(
                                color: Color(0xff7F8FA6), fontSize: 15),
                            textDirection: TextDirection.rtl,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.only(right: 10, top: 5, left: 10),
                    child: Row(
                      children: [
                        Container(
                            width: 170,
                            child: Text(
                              getTranslated(context, "order_time"),
                              style: TextStyle(
                                  color: Color(0xff18304B), fontSize: 15),
                            )),
                        Container(
                          width: 130,
                          child: Text(
                            "20.09.2020, 18:30",
                            style: TextStyle(
                                color: Color(0xff7F8FA6), fontSize: 15),
                            textDirection: TextDirection.rtl,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.only(right: 10, top: 5, left: 10),
                    child: Row(
                      children: [
                        Container(
                            width: 170,
                            child: Text(
                              getTranslated(context, "delivery_time"),
                              style: TextStyle(
                                  color: Color(0xff18304B), fontSize: 15),
                            )),
                        Container(
                          width: 130,
                          child: Text(
                            "20.09.2020, 18:30",
                            style: TextStyle(
                                color: Color(0xff7F8FA6), fontSize: 15),
                            textDirection: TextDirection.rtl,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.only(right: 10, top: 5, left: 10),
                    child: Row(
                      children: [
                        Container(
                            width: 170,
                            child: Text(
                              getTranslated(context, "city"),
                              style: TextStyle(
                                  color: Color(0xff18304B), fontSize: 15),
                            )),
                        Container(
                          width: 130,
                          child: Text(
                            "الرياض",
                            style: TextStyle(
                                color: Color(0xff7F8FA6), fontSize: 15),
                            textDirection: TextDirection.rtl,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.only(right: 10, top: 5, left: 10),
                    child: Row(
                      children: [
                        Container(
                            width: 170,
                            child: Text(
                              getTranslated(context, "country"),
                              style: TextStyle(
                                  color: Color(0xff18304B), fontSize: 15),
                            )),
                        Container(
                          width: 130,
                          child: Text(
                            "السعودية",
                            style: TextStyle(
                                color: Color(0xff7F8FA6), fontSize: 15),
                            textDirection: TextDirection.rtl,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      Positioned(
        bottom: 30,
        right: 30,
        left: 30,
        child: Padding(
          padding: const EdgeInsets.only(top: 70.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  width: 158,
                  height: 50,
                  child: RaisedButton(
                    child: Text(
                      getTranslated(context, "rating_order"),
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                    color: Color(0xffEC3942),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    onPressed: () {
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5.0),
                                topRight: Radius.circular(5.0)),
                          ),
                          isScrollControlled: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          isDismissible: true,
                          context: context,
                          builder: (context) => FractionallySizedBox(
                                heightFactor: 0.60,
                                child: RatingOrder(),
                              ));
                    },
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: Container(
                  width: 158,
                  height: 50,
                  child: RaisedButton(
                    child: Text(
                      getTranslated(context, "re_order"),
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                    color: Color(0xff00B5F0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
