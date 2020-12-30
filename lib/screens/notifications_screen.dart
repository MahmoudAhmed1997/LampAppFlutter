import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/localization/language_constants.dart';
import 'package:lamp/screens/test.dart';

class NotificationsScreen extends StatefulWidget {
  static const routeName = '/notification_screen';

  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);

    return Scaffold(
      backgroundColor: Color(0xffFDFDFF),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Color(0xff00B5F0),
          title: Text(
            getTranslated(
              context,
              "notify",
            ),
            style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18),
          ),
          leading: myLocale.languageCode == "ar"
              ? Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Container(
                    height: 38,
                    width: 38,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset("assets/icons/button_right.svg"),
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Container(
                    height: 38,
                    width: 38,
                    child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child:
                            SvgPicture.asset("assets/icons/button_left.svg")),
                  ),
                )),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                width: 355,
                child: Padding(
                  padding: const EdgeInsets.only(top: 22.0, right: 17,left: 17),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset("assets/icons/order_icon.svg"),
                      SizedBox(
                        width: 18,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  getTranslated(
                                    context,
                                    "order_al",
                                  ),
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xff18304B)),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "#20456",
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xff18304B)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "25.05.2020, 18:30",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff7F8FA6)),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              getTranslated(
                                context,
                                "order_ready",
                              ),
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff7F8FA6)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )),
          SizedBox(
            height: 10,
          ),
          Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                width: 355,
                child: Padding(
                  padding: const EdgeInsets.only(top: 22.0, right: 17,left: 17),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset("assets/icons/order_icon.svg"),
                      SizedBox(
                        width: 18,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  getTranslated(
                                    context,
                                    "order_al",
                                  ),
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xff18304B)),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "#20456",
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xff18304B)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "25.05.2020, 18:30",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff7F8FA6)),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              getTranslated(
                                context,
                                "order_ready",
                              ),
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff7F8FA6)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )),
          SizedBox(
            height: 10,
          ),
          Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                width: 351,
                child: Padding(
                  padding: const EdgeInsets.only(top: 22.0, right: 17,left: 17),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset("assets/icons/offer_notify.svg"),
                      SizedBox(
                        width: 18,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  getTranslated(
                                    context,
                                    "dis",
                                  ),
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xff18304B)),
                                ),
                                //   SizedBox(width: 5,),
                                //  Text("#20456",style: TextStyle(fontSize: 15,color: Color(0xff18304B)),),
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              getTranslated(
                                context,
                                "hour",
                              ),
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff7F8FA6)),
                            ),
                            Text(
                              getTranslated(
                                context,
                                "order_ready",
                              ),
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff7F8FA6)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )),
          SizedBox(
            height: 10,
          ),
          Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                width: 355,
                child: Padding(
                  padding: const EdgeInsets.only(top: 22.0, right: 17,left: 17),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset("assets/icons/order_icon.svg"),
                      SizedBox(
                        width: 18,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  getTranslated(
                                    context,
                                    "order_al",
                                  ),
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xff18304B)),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "#20456",
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xff18304B)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "25.05.2020, 18:30",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff7F8FA6)),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              getTranslated(
                                context,
                                "order_ready",
                              ),
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff7F8FA6)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )),
          SizedBox(
            height: 10,
          ),
          Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                width: 351,
                child: Padding(
                  padding: const EdgeInsets.only(top: 22.0, right: 17,left: 17),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset("assets/icons/offer_notify.svg"),
                      SizedBox(
                        width: 18,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  getTranslated(
                                    context,
                                    "dis",
                                  ),
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xff18304B)),
                                ),
                                //   SizedBox(width: 5,),
                                //  Text("#20456",style: TextStyle(fontSize: 15,color: Color(0xff18304B)),),
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              getTranslated(
                                context,
                                "hour",
                              ),
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff7F8FA6)),
                            ),
                            Text(
                              getTranslated(
                                context,
                                "order_ready",
                              ),
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff7F8FA6)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
