import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/widgets/appbar_widgets.dart';
import 'package:lamp/widgets/prod.dart';

class DesignerProfile extends StatefulWidget {
  @override
  _DesignerProfileState createState() => _DesignerProfileState();
}

class _DesignerProfileState extends State<DesignerProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 155,
              color: Color(0xff00B5F0),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset("assets/icons/cart.svg"),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "محمد الخالدي",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                                Text(
                                  "250 Product , 152 Order",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 13.0,
                            ),
                            CircleAvatar(
                              radius: 28,
                              backgroundColor: Color(0xffFFFFFF),
                              child: CircleAvatar(
                                radius: 27,
                                backgroundColor: Color(0xff00B5F0),
                                child: CircleAvatar(
                                  radius: 26,
                                  backgroundImage:
                                  AssetImage("assets/images/face.png"),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SvgPicture.asset("assets/icons/button_right.svg"),
                      ],
                    ),
                    SizedBox(
                      height: 17.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 45,
                          width: 343,
                          child: TextFormField(
                            enableInteractiveSelection: false,
                            style: TextStyle(color: Colors.grey),
                            key: ValueKey("البحث"),
                            autocorrect: false,
                            textCapitalization: TextCapitalization.none,
                            enableSuggestions: false,
                            validator: (value) {
                              if (value.isEmpty) {
                                return '';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              suffixIcon: Container(
                                width: 15,
                                height: 12,
                                child: SvgPicture.asset(
                                  "assets/icons/search.svg",
                                  fit: BoxFit.fitWidth,
                                  allowDrawingOutsideViewBox: true,
                                  matchTextDirection: true,
                                ),
                              ),
                              alignLabelWithHint: true,
                              filled: true,
                              fillColor: Color(0xffFAFAFA),
                              labelText: "ابحث عن منتج",
                              labelStyle: TextStyle(
                                  color: Color(0xffA4B0BE), fontSize: 15),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: BorderSide.none),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                new BorderSide(color: Color(0xff18304B)),
                                borderRadius: new BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 1000,
              child: ListView(scrollDirection: Axis.vertical, children: [
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
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
