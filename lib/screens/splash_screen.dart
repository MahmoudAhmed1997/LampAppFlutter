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
  void _changeLanguage(Language language) async {
    Locale _locale = await setLocale(language.languageCode);
    MyApp.setLocale(context, _locale);
  }

  void _showSuccessDialog() {
    showTimePicker(context: context, initialTime: TimeOfDay.now());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButton<Language>(
            underline: SizedBox(),
            icon: Icon(
              Icons.language,
              color: Colors.black,
            ),
            onChanged: (Language language) {
              _changeLanguage(language);
            },
            items: Language.languageList()
                .map<DropdownMenuItem<Language>>(
                  (e) => DropdownMenuItem<Language>(
                value: e,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      e.flag,
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(e.name)
                  ],
                ),
              ),
            )
                .toList(),
          ),
        ),
      ],),
      backgroundColor: Color(0xffFFFFFF),
      body:InkWell(
        onTap: (){
          Navigator.of(context).pushNamed(LoginScreen.routeName);
        },
        child: Stack(children: [
          Container(
            alignment: Alignment.topLeft,
            height: 457,width: 347,
            child: Image(image: AssetImage("assets/images/shadow 1.png"),color: Color(0xffFDFDFF),),
          ),


          Image(image: AssetImage("assets/images/shadow 2.png"),color: Color(0xffF9F9FF),),
          Padding(
            padding: const EdgeInsets.only(right:8.0),
            child: Container(
                alignment: Alignment.centerRight,
                child: Image(image: AssetImage("assets/images/points.png",),height: 188,width:24)),
          ),



          Center(
            child: Container(

              width: 90,height: 159,
               child:SvgPicture.asset("assets/images/logo.svg")
              ,
               // child: Image(image: AssetImage("assets/images/logo.png"),color: Color(0xff00B5F0),)),
          ),),
          Container(

              alignment: Alignment.bottomRight,
              child: Image(image: AssetImage("assets/images/lines.png"),color: Color(0xff00B5F0),width: 199,height: 195,)),

        ],),
      ),
    );
  }
}
