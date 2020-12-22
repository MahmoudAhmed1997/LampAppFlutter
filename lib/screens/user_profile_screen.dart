import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/screens/addresses_screen.dart';
import 'package:lamp/screens/edit_profile_screen.dart';
import 'package:lamp/screens/login_screen.dart';
import 'package:lamp/screens/setting_screen.dart';
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
      backgroundColor: Color(0xffFDFDFF),
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
                height: 55.0,
                decoration: new BoxDecoration(

                  gradient: new LinearGradient(
                    begin: const Alignment(0.0, -2.0),
                    end: const Alignment(0.0, 0.1),
                    colors: <Color>[
                      Color(0xff707070).withOpacity(0.1),
                      Colors.white.withOpacity(0.3)
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right:45.0,left: 45),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 3.0),
                            child: Container(
                                width: 17,
                                height: 20,
                                child:
                                    SvgPicture.asset("assets/icons/fav.svg")),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "المفضلة ",
                            style: TextStyle(
                                fontSize: 17, color: Color(0xff18304B)),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "١٥",
                            style: TextStyle(
                                fontSize: 17, color: Color(0xff18304B),fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "طلباتك",
                            style: TextStyle(
                                fontSize: 17, color: Color(0xff18304B)),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "١٥٠",
                            style: TextStyle(
                                fontSize: 17, color: Color(0xff18304B),fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 1000,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  InkWell(
                    onTap:(){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EditProfileScreen()));

                    },
                    child: Container(
                      width: 350,
                      height: 61,
                      color: Color(0xffFFFFFF),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
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
                                      fontSize: 16, color: Color(0xff18304B),fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                            SvgPicture.asset(
                              "assets/icons/arrow_right.svg",
                              color: Color(0xff464451),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap:(){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EditProfileScreen()));

                    },

                    child: Container(
                      width: 350,
                      height: 61,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: new LinearGradient(
                          begin: const Alignment(0.0, -5.0),
                          end: const Alignment(0.0, 0.1),
                          colors: <Color>[
                            Color(0xff03004D).withOpacity(0.1),
                            Colors.white.withOpacity(0.3)
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
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
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap:(){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SettingsScreen()));

                    },

                    child: Container(
                      width: 350,
                      height: 61,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: new LinearGradient(
                          begin: const Alignment(0.0, -5.0),
                          end: const Alignment(0.0, 0.1),
                          colors: <Color>[
                            Color(0xff03004D).withOpacity(0.1),
                            Colors.white.withOpacity(0.3)
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
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
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap:(){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddressesScreen()));

                    },

                    child: Container(
                      width: 350,
                      height: 61,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: new LinearGradient(
                          begin: const Alignment(0.0, -5.0),
                          end: const Alignment(0.0, 0.1),
                          colors: <Color>[
                            Color(0xff03004D).withOpacity(0.1),
                            Colors.white.withOpacity(0.3)
                          ],
                        ),
                      ),

                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
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
                        ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap:(){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginScreen()));

                    },

                    child: Container(
                      width: 350,
                      height: 61,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: new LinearGradient(
                          begin: const Alignment(0.0, -5.0),
                          end: const Alignment(0.0, 0.1),
                          colors: <Color>[
                            Color(0xff03004D).withOpacity(0.1),
                            Colors.white.withOpacity(0.3)
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
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
