import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/widgets/appbar_widgets.dart';
import 'package:lamp/widgets/prod.dart';

class FavouriteSecondScreen extends StatefulWidget {
  @override
  _FavouriteSecondScreenState createState() => _FavouriteSecondScreenState();
}

class _FavouriteSecondScreenState extends State<FavouriteSecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(

                  width: double.infinity,
                  height: 152,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "المفضلة",
                                style: TextStyle(
                                    fontSize: 17, color: Color(0xff18304B)),
                              ),
                            ],
                          ),
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
                                  prefixIcon: ImageIcon(
                                    AssetImage("assets/icons/search.png"),
                                    size: 5,
                                    color: Colors.black,
                                  ),
                                  alignLabelWithHint: true,
                                  filled: true,
                                  fillColor: Color(0xffEBEBEB),
                                  labelText: "ما الذي تبحث عنه؟",
                                  labelStyle: TextStyle(
                                      color: Color(0xffA4B0BE), fontSize: 15),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                      borderSide: BorderSide.none),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: Color(0xff18304B)),
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
        ),
      ]),
    );
  }
}
