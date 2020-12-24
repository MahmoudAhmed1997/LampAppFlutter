import 'package:flutter/material.dart';
import 'package:lamp/screens/home.dart';
import 'package:lamp/screens/home_screen.dart';
import 'package:lamp/screens/login_screen.dart';
import 'package:lamp/router/route_constants.dart';
import 'package:lamp/screens/product_detailes.dart';
import 'package:lamp/screens/splash_screen.dart';


class CustomRouter {
  static Route<dynamic> generatedRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen())
        ;
      // case splashRoute:
      //   return MaterialPageRoute(builder: (_) => SplashScreen())  ;
    case loginRoute:
      return MaterialPageRoute(builder: (_) => LoginScreen())
      ;
      default:
        return MaterialPageRoute(builder: (_) => HomeScreen());
    }
  }
}
