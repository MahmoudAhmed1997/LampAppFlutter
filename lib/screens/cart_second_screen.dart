import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/widgets/appbar_widgets.dart';
import 'package:lamp/widgets/prod.dart';

class CartsSecondScreen extends StatefulWidget {
  static const routeName = '/carts_second_screen';

  @override
  _CartsSecondScreenState createState() => _CartsSecondScreenState();
}

class _CartsSecondScreenState extends State<CartsSecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,centerTitle: true,
        title: Column(
        children: [
          Text(
            "سلة المشتريات",
            style: TextStyle(
                fontSize: 17,
                color: Color(0xff18304B)),
          ),

          Text(
            "منتجات 03",
            style: TextStyle(
                fontSize: 15,
                color: Color(0xff7F8FA6)),
          ),
        ],
      ),
          ),
      body: Stack(children: [
        Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:45.0),
                    child: Container(
                        height: 283,
                        width: 332,
                        child: SvgPicture.asset("assets/images/artwork_cart.svg")
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:31.0),
                    child: Text("سلة الشراء فارغة",style: TextStyle(color: Color(0xff18304B),fontSize: 22,fontWeight: FontWeight.bold),),
                  )
                  ,Text("ابدأ بالتسوق وأضف منتجاتك الى السلة",style: TextStyle(color: Color(0xff18304B),fontSize: 13,fontWeight: FontWeight.bold),)
                  , Padding(
                    padding: const EdgeInsets.only(top:33.0),
                    child: Container(

                      width: 237,
                      height: 56,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0)),
                        color: Color(0xff00B5F0),
                        child: Text(
                          "تسوق الآن",
                          style: TextStyle(color: Colors.white,fontSize: 16),
                        ),
                        onPressed: () { },
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
