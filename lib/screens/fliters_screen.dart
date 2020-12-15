import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FliterProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      resizeToAvoidBottomPadding: false,

      body: Stack(
        children: [
        Directionality(
          textDirection: TextDirection.rtl,
          child: Center(
            child: Container(
              width: 327,

              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:10.0),
                      child: SvgPicture.asset("assets/images/indicator.svg"),
                    ),
                    Text("فلترة المنتجات",style: TextStyle(fontSize: 20,color: Color(0xff18304B)),),
                    Text("الأحدث، الأكثر طلبا",style: TextStyle(fontSize: 20,color: Color(0xff18304B)),),
                    Container(
                      width: 327,
                      height: 56,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0)),
                        color: Color(0xff00B5F0),
                        child: Text(
                          "التالي",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          null;
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),


        ),
          Padding(
            padding: const EdgeInsets.only(top:20.0,left: 16),
            child: Container(
              alignment: Alignment.topLeft,
              child: SvgPicture.asset("assets/icons/button_cancle.svg"),),
          )
     ] ),
    ); }
}
