import 'package:flutter/material.dart';
import 'package:lamp/widgets/designer_card.dart';
import 'package:lamp/widgets/prod.dart';

class HoodScreen extends StatefulWidget {
  @override
  _HoodScreenState createState() => _HoodScreenState();
}

class _HoodScreenState extends State<HoodScreen> {
  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.only(top:16.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Prod(widthCard: 180,widthButton: 167,),
                SizedBox(
                  width: 12.0,
                ),
                Prod(widthCard: 180,widthButton: 167,),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 17.0, left: 13, top: 17, bottom: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "تسوق حسب المصممين",
                    style: TextStyle(fontSize: 16, color: Color(0xff18304B)),
                  ),
                  RaisedButton(
                    color: Color(0xffFFFFFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    onPressed: () {
                      print("lkf");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "عرض الكل",
                          style: TextStyle(
                              fontSize: 12, color: Color(0xff18304B)),
                        ),
                        SizedBox(width: 6,),
                        Container(
                          height: 7,width: 11,
                          child: ImageIcon(
                            AssetImage("assets/icons/shape.png"),
                            color: Color(0xff18304B),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right:15.0),
              child: Container(
                width: double.infinity,
                height:148 ,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    DesignerCard(),
                    SizedBox(
                      width: 13.0,
                    ),
                    DesignerCard(),
                    SizedBox(
                      width: 13.0,
                    ),
                    DesignerCard(),
                  ],
                ),
              ),
            ),
            SizedBox(height: 33,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Prod(widthCard: 180,widthButton: 167,),
                SizedBox(
                  width: 12.0,
                ),
                Prod(widthCard: 180,widthButton: 167,),
              ],
            ),
            SizedBox(height: 33,),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Prod(widthCard: 180,widthButton: 167,),
                SizedBox(
                  width: 12.0,
                ),
                Prod(widthCard: 180,widthButton: 167,),
              ],
            ),






          ],
        ),
      );
  }
}
