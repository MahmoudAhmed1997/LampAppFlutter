import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lamp/screens/login_screen.dart';
import 'package:lamp/widgets/bottomAppBarItems.dart';
import 'package:lamp/localization/language_constants.dart';
import 'package:lamp/widgets/prod.dart';
import 'package:lamp/localization/language_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/main.dart';
import 'package:lamp/classes/language.dart';
import 'package:lamp/provider/designers.dart';
import 'package:lamp/provider/products.dart';
import 'package:lamp/screens/new_product_screen.dart';
import 'package:lamp/widgets/designer_card.dart';
import 'package:lamp/localization/language_constants.dart';
import 'package:lamp/widgets/prod.dart';
import 'package:lamp/localization/language_constants.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/splash_screen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
     Future.delayed(
        Duration(seconds: 5),
            () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        ));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: Container(
          child: Stack(
            children: [
              Container(
                alignment: Alignment.topLeft,
                height: 457,
                width: 347,
                child: Image(
                  image: AssetImage("assets/images/shadow 1.png"),
                  color: Color(0xffFDFDFF),
                ),
              ),
              Image(
                image: AssetImage("assets/images/shadow 2.png"),
                color: Color(0xffF9F9FF),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                    alignment: Alignment.centerRight,
                    child: Image(
                        image: AssetImage(
                          "assets/images/points.png",
                        ),
                        height: 188,
                        width: 24)),
              ),
              Center(
                child: Container(
                  width: 90, height: 159,
                  child: SvgPicture.asset("assets/images/logo.svg"),
                  // child: Image(image: AssetImage("assets/images/logo.png"),color: Color(0xff00B5F0),)),
                ),
              ),
              Container(
                  alignment: Alignment.bottomRight,
                  child: Image(
                    image: AssetImage("assets/images/lines.png"),
                    color: Color(0xff00B5F0),
                    width: 199,
                    height: 195,
                  )),
            ],
          ),
        ),
      );
  }
}
