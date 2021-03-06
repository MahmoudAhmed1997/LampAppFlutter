import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/screens/notifications_screen.dart';

class NotificationIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(overflow: Overflow.visible, children: [
      InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NotificationsScreen()));

          },
          child: Container(child: SvgPicture.asset("assets/icons/ic.svg"))),
      Positioned(
        top: -6,
        left: -5,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color(0xff18304B)),
          width: 16,
          height: 16,
          child: Center(
            child: Text(
              "3",
              style: TextStyle(color: Colors.white, fontSize: 11),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      )
    ]);
  }
}
