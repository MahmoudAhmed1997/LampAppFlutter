import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lamp/widgets/checkbox_values.dart';
import 'package:lamp/widgets/rang_slider.dart';

class FiltersProducts extends StatelessWidget {
  static const routeName = '/filters_products';
  double _lowerValue = 0;
  double _upperValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      resizeToAvoidBottomPadding: false,
      body: Stack(children: [
        Directionality(
          textDirection: TextDirection.rtl,
          child: Center(
            child: Container(
              width: 327,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: SvgPicture.asset("assets/images/indicator.svg"),
                    ),
                  ),
                  Text(
                    "فلترة المنتجات",
                    style: TextStyle(fontSize: 20, color: Color(0xff18304B)),
                  ),
                  Text(
                    "الأحدث، الأكثر طلبا",
                    style: TextStyle(fontSize: 15, color: Color(0xff7F8FA6)),
                  ),
                  Text(
                    "حسب اللون",
                    style: TextStyle(fontSize: 15, color: Color(0xff18304B)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: 27,
                          height: 27,
                          child: RaisedButton(
                            color: Colors.red,
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                          )),
                      SizedBox(
                        width: 13,
                      ),
                      Container(
                          width: 27,
                          height: 27,
                          child: RaisedButton(
                            color: Color(0xff18304B),
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                          )),
                      SizedBox(
                        width: 13,
                      ),
                      Container(
                          width: 27,
                          height: 27,
                          child: RaisedButton(
                            color: Color(0xff991FD5),
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                          )),
                      SizedBox(
                        width: 13,
                      ),
                      Container(
                          width: 27,
                          height: 27,
                          child: RaisedButton(
                            color: Color(0xff84D467),
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                          )),
                      SizedBox(
                        width: 13,
                      ),
                      Container(
                          width: 27,
                          height: 27,
                          child: RaisedButton(
                            color: Color(0xffF45540),
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                          )),
                      SizedBox(
                        width: 13,
                      ),
                      Container(
                          width: 27,
                          height: 27,
                          child: RaisedButton(
                            color: Color(0xff00B5F0),
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                          )),
                    ],
                  ),
                  Divider(),
                  Container(child: GetCheckValue()),
                  Divider(),
                  SizedBox(
                    height: 22,
                  ),


                  SvgPicture.asset(
                    'assets/images/price.svg',
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 30,
          left: 30,
          bottom: 30,
          child: Container(
            width: 327,
            height: 56,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
              color: Color(0xff00B5F0),
              child: Text(
                "عرض النتائج",
                style: TextStyle(color: Colors.white,fontSize: 16),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 16),
          child: Container(
            alignment: Alignment.topLeft,
            child: SvgPicture.asset("assets/icons/button_cancle.svg"),
          ),
        )
      ]),
    );
  }
}
