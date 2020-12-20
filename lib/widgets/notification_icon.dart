import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotificationIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
        overflow: Overflow.visible,
        children: [
      Container(child: SvgPicture.asset("assets/icons/ic.svg")),
      Positioned(
          top: -6,
          left: -5,
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Color(0xff18304B)),
            width: 17,
            height: 17,
            child: Center(child: Text("3",style: TextStyle(color: Colors.white,fontSize: 11),)),
          )),
    ]);
  }
}
