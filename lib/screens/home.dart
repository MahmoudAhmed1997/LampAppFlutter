import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lamp/widgets/designer_card.dart';
import 'package:lamp/widgets/prod.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            children: [
              Image(
                height: 130,
                fit: BoxFit.fitWidth,
                width: double.infinity,
                image: AssetImage("assets/images/sub_bunner.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    right: 11.0, left: 8, top: 17, bottom: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "مقترحة لك",
                      style: TextStyle(fontSize: 16, color: Color(0xff18304B)),
                    ),
                    RaisedButton(
                      color: Color(0xffFFFFFF),
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),

                        side: BorderSide(color: Color(0xffE6EAFC))
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
                          SizedBox(
                            width: 6,
                          ),
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
              Container(
                height: 287.0,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Prod(widthCard: 150,widthButton: 134,),
                      SizedBox(
                        width: 12.0,
                      ),
                      Prod(widthCard: 150,widthButton: 134,),
                      SizedBox(
                        width: 12.0,
                      ),
                      Prod(widthCard: 150,widthButton: 134,),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    right: 15.0, left: 9, top: 17, bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "تسوق حسب المصممين",
                      style: TextStyle(fontSize: 16, color: Color(0xff18304B)),
                    ),
                    RaisedButton(
                      color: Color(0xffFFFFFF),
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),

                          side: BorderSide(color: Color(0xffE6EAFC))
                      ),
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
                      onPressed: (){},

                    ),
                  ],
                ),
              ),
              Hero(
                tag: "card",
                child: Container(
                  width: double.infinity,
                  height:148 ,
                  child: Padding(
                    padding: EdgeInsets.only(right: 15.0),
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
              ),
              Padding(
                padding: const EdgeInsets.only(
                    right: 11.0, left: 8, top: 17, bottom: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "أضيف حديثا",
                      style: TextStyle(fontSize: 16, color: Color(0xff18304B)),
                    ),
                    RaisedButton(
                      color: Color(0xffFFFFFF),
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),

                          side: BorderSide(color: Color(0xffE6EAFC)),

                      ),
                      child: Row(

                        children: [
                          Text(
                            "المزيد",
                            style: TextStyle(
                                fontSize: 13, color: Color(0xff18304B)),
                          ),
                          SizedBox(width: 17,),

                          Container(
                            height: 7,width: 11,
                            child: ImageIcon(
                              AssetImage("assets/icons/shape.png"),
                              color: Color(0xff18304B),
                            ),
                          )
                        ],
                      ),
                      onPressed: (){},
                    ),
                  ],
                ),
              ),
              Container(
                height: 287.0,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Prod(widthCard: 150,widthButton: 134,),
                      SizedBox(
                        width: 12.0,
                      ),
                      Prod(widthCard: 150,widthButton: 134,),
                      SizedBox(
                        width: 12.0,
                      ),
                      Prod(widthCard: 150,widthButton: 134,),
                    ],
                  ),
                ),
              ),

            ],
          )),
    );
  }
}
