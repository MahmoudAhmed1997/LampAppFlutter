import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/widgets/appbar_widgets.dart';
import 'package:lamp/widgets/notification_icon.dart';
import 'package:lamp/widgets/prod.dart';

class UserProfileScreen extends StatefulWidget {
  static const routeName = '/user_profile_screen';

  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 135,
                color: Color(0xff00B5F0),
                child: Padding(
                  padding: const EdgeInsets.only(top: 60, right: 25, left: 25),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mohammed Samer",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "usermail@gmail.com",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              )
                            ],
                          ),
                          NotificationIcon(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                height: 1000,
                child: ListView(scrollDirection: Axis.vertical, children: [
                  Center(
                    child: Container(


                      width: 350,
                      height: 61,
                      child: RaisedButton(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),

                        ),
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/edit_profile.svg",
                                  color: Color(0xff464451),
                                ),
                                SizedBox(
                                  width: 30.0,
                                ),
                                Text(
                                  "المعلومات الشخصية",
                                  style: TextStyle(
                                      fontSize: 16, color: Color(0xff18304B)),
                                ),
                              ],
                            ),
                            SvgPicture.asset(
                              "assets/icons/arrow_right.svg",
                              color: Color(0xff464451),
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Container(
                      width: 350,
                      height: 61,
                      child: RaisedButton(
                        elevation: 0.9,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/translate.svg",
                                  color: Color(0xff18304B),
                                ),
                                SizedBox(
                                  width: 30.0,
                                ),
                                Text(
                                  "تغيير اللغة",
                                  style: TextStyle(
                                      fontSize: 16, color: Color(0xff18304B)),
                                ),
                              ],
                            ),
                            SvgPicture.asset(
                              "assets/icons/arrow_right.svg",
                              color: Color(0xff18304B),
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Container(
                      width: 350,
                      height: 61,
                      child: RaisedButton(
                        elevation: 0.9,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/setting_icon.svg",
                                  color: Color(0xff18304B),
                                ),
                                SizedBox(
                                  width: 30.0,
                                ),
                                Text(
                                  "الاعدادات العامة",
                                  style: TextStyle(
                                      fontSize: 16, color: Color(0xff18304B)),
                                ),
                              ],
                            ),
                            SvgPicture.asset(
                              "assets/icons/arrow_right.svg",
                              color: Color(0xff464451),
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Container(
                      width: 350,
                      height: 61,
                      child: RaisedButton(
                        elevation: 0.9,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/location_icon.svg",
                                  color: Color(0xff18304B),
                                ),
                                SizedBox(
                                  width: 30.0,
                                ),
                                Text(
                                  "إدارة العنــاوين",
                                  style: TextStyle(
                                      fontSize: 16, color: Color(0xff18304B)),
                                ),
                              ],
                            ),
                            SvgPicture.asset(
                              "assets/icons/arrow_right.svg",
                              color: Color(0xff464451),
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Container(
                      width: 350,
                      height: 61,
                      child: RaisedButton(
                        elevation: 0.9,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 30,
                                  child: SvgPicture.asset(
                                    "assets/icons/log_out.svg",

                                  ),
                                ),
                                SizedBox(
                                  width: 25.0,
                                ),
                                Text(
                                  "تسجيل الخروج",
                                  style: TextStyle(
                                      fontSize: 16, color: Color(0xff18304B)),
                                ),
                              ],
                            ),
                            SvgPicture.asset(
                              "assets/icons/arrow_right.svg",
                              color: Color(0xff464451),
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),

                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
