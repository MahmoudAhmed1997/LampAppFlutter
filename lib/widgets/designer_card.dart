import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DesignerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: BoxDecoration(
            color: Color(0xff00B5F0), borderRadius: BorderRadius.circular(5)),
        height: 148,
        width: 116,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:13.0,bottom:10 ),
              child: CircleAvatar(
                radius: 28,
                backgroundColor: Color(0xffFFFFFF),
                child: CircleAvatar(
                  radius: 27,
                  backgroundColor: Color(0xff00B5F0),
                  child: CircleAvatar(
                    radius: 26,
                    backgroundImage: AssetImage("assets/images/face.png"),
                  ),
                ),

              ),
            ),
            Text(
              "محمد الخالدي",
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),

            Padding(
              padding: const EdgeInsets.only(top:6.0),
              child: Text(
                " 15022 منتج",
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ),
          ],
        ),
      );
  }
}
