import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/widgets/appbar_widgets.dart';
import 'package:lamp/widgets/prod.dart';

class DetailsProductScreen extends StatefulWidget {
  @override
  _DetailsProductScreenState createState() => _DetailsProductScreenState();
}

class _DetailsProductScreenState extends State<DetailsProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        ListView(children: [
          Directionality(
            textDirection: TextDirection.rtl,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 80,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            "assets/images/right_button.svg",
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "تفاصيل المنتج",
                                  style: TextStyle(
                                      fontSize: 18, color: Color(0xff464451)),
                                ),
                              ],
                            ),
                          ),
                          SvgPicture.asset("assets/icons/share_icon.svg"),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      height: 225,
                      width: 352,
                      child: Image.asset(
                        "assets/images/Big Image.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, right: 25.0),
                    child: Container(
                      height: 85,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffF9F9FF)),
                            height: 63,
                            width: 57,
                            child: Image.asset(
                              "assets/images/t_shirt.png",
                            ),
                          ),
                          SizedBox(
                            width: 12.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            height: 63,
                            width: 57,
                            child: Image.asset("assets/images/t_shirt.png"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "مادة تستخدم كبطانة كلاسيك للحيوانات \nالصغيرة - شيبسي",
                        style:
                            TextStyle(fontSize: 18, color: Color(0xff18304B)),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        " 500 رس",
                        style: TextStyle(
                            fontSize: 19,
                            color: Color(0xffF45540),
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 143,
                        height: 40,
                        child: Row(
                          children: [
                            SvgPicture.asset("assets/icons/plus.svg"),
                            Container(
                                color: Colors.white,
                                width: 45,
                                height: 39,
                                child: Center(
                                    child: Text(
                                  "02",
                                  style: TextStyle(
                                      fontSize: 16, color: Color(0xff18304B)),
                                ))),
                            SvgPicture.asset("assets/icons/minus.svg"),
                          ],
                        ),
                      )
                    ],
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(top: 21.0),
                    child: Text(
                      "المقاسات المتاحة (أمريكي)",
                      style: TextStyle(fontSize: 16, color: Color(0xff18304B)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 21),
                    child: Container(
                      height: 45,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            decoration: BoxDecoration(

                                //  color: Colors.red,
                                border: Border.all(color: Color(0xff00B5F0))),
                            height: 43,
                            width: 68,
                            child: RaisedButton(
                              color: Colors.white,
                              child: Text("L"),
                              onPressed: () {
                                print("c");
                              },
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffE8E8E8))),
                            height: 43,
                            width: 68,
                            child: RaisedButton(
                              color: Colors.white,
                              child: Text("XL"),
                              onPressed: () {
                                print("c");
                              },
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffE8E8E8))),
                            height: 43,
                            width: 68,
                            child: RaisedButton(
                              color: Colors.white,
                              child: Text("XL"),
                              onPressed: () {
                                print("c");
                              },
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffE8E8E8))),
                            height: 43,
                            width: 68,
                            child: RaisedButton(
                              color: Colors.white,
                              child: Text("XL"),
                              onPressed: () {
                                print("c");
                              },
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffE8E8E8))),
                            height: 43,
                            width: 68,
                            child: RaisedButton(
                              color: Colors.white,
                              child: Text("XL"),
                              onPressed: () {
                                print("c");
                              },
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffE8E8E8))),
                            height: 43,
                            width: 68,
                            child: RaisedButton(
                              color: Colors.white,
                              child: Text("XL"),
                              onPressed: () {
                                print("c");
                              },
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffE8E8E8))),
                            height: 43,
                            width: 68,
                            child: RaisedButton(
                              color: Colors.white,
                              child: Text("XL"),
                              onPressed: () {
                                print("c");
                              },
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffE8E8E8))),
                            height: 43,
                            width: 68,
                            child: RaisedButton(
                              color: Colors.white,
                              child: Text("XL"),
                              onPressed: () {
                                print("c");
                              },
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 25.0, left: 15, right: 17, bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "منتجات مقترحة",
                          style: TextStyle(
                              color: Color(0xff18304B),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 13.0,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Color(0xffFFFFFF),
                              child: CircleAvatar(
                                radius: 24,
                                backgroundColor: Color(0xff00B5F0),
                                child: CircleAvatar(
                                  radius: 23,
                                  backgroundImage:
                                      AssetImage("assets/images/face.png"),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "محمد الخالدي",
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xff18304B)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Prod(
                        widthCard: 180,
                        widthButton: 167,
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      Prod(
                        widthCard: 180,
                        widthButton: 167,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 33,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Prod(
                        widthCard: 180,
                        widthButton: 167,
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      Prod(
                        widthCard: 180,
                        widthButton: 167,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 33,
                  ),
                ],
              ),
            ),
          ),
        ]),
        Positioned(
          left: 20,
          right: 20,
          bottom: 15,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                color: Color(0xff18304B),
                margin: EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Container(
                  width: 55,
                  height: 55,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          width: 22,
                          height: 24,
                          child: ImageIcon(
                            AssetImage(
                              "assets/icons/fav.png",
                            ),
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Card(
                color: Color(0xff00B5F0),
                margin: EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Container(
                  width: 278,
                  height: 53,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          width: 22,
                          height: 24,
                          child: ImageIcon(
                            AssetImage(
                              "assets/icons/icon_cart.png",
                            ),
                            color: Colors.white,
                          )),
                      Text(
                        "أضف للسلة",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
