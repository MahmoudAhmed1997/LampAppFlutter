import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lamp/provider/designers.dart';
import 'package:lamp/screens/designer_profile.dart';

class DesignerCard extends StatelessWidget {
  final int index;

   DesignerCard({Key key, this.index}) : super(key: key);
  @override
  Designers designers = Designers();
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DesignerProfile()));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 14),
        child: Container(
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
                        backgroundImage: AssetImage(designers.designers_list[index].imagePath),
                      ),
                    ),

                  ),
                ),
                Text(
                  designers.designers_list[index].name,
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
          ),
      ),
    );
  }
}
