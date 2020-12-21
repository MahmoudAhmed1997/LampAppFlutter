import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/widgets/appbar_widgets.dart';
import 'package:lamp/widgets/prod.dart';

class FavouriteScreen extends StatefulWidget {
  static const routeName = '/favourite_screen';

  @override
  _FavouriteScreenState createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(

              width: double.infinity,
              height: 125,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top:25.0,),
                child: Column(
                  children: [
                    Text(
                    "المفضلة",
                      style: TextStyle(
                          fontSize: 17, color: Color(0xff18304B)),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 45,
                          width: 343,
                          child: Stack(children: [
                            TextFormField(

                              textAlign: TextAlign.center,
                              enableInteractiveSelection: false,
                              style: TextStyle(color: Colors.grey),
                              key: ValueKey("البحث"),
                              autocorrect: false,

                              validator: (value) {
                                if (value.isEmpty) {
                                  return '';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(9.0),

                                filled: true,
                                fillColor: Color(0xffFAFAFA),
                                hintText: "ما الذي تبحث عنه؟",
                                alignLabelWithHint: true,
                                hintStyle: TextStyle(
                                    color: Color(0xff425154), fontSize: 15),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6.0),
                                    borderSide: BorderSide.none),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  new BorderSide(color: Color(0xff18304B)),
                                  borderRadius: new BorderRadius.circular(6),
                                ),
                              ),
                            ),
                            Positioned.fill(
                              right: 94,
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: UnconstrainedBox(
                                  child: SvgPicture.asset(
                                    "assets/icons/search.svg",
                                    fit: BoxFit.fitWidth,
                                    allowDrawingOutsideViewBox: true,
                                    matchTextDirection: true,
                                  ),
                                ),
                              ),
                            )
                          ]),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Container(
                height: 283,
                width: 332,
                child: SvgPicture.asset("assets/images/artwork.svg")
              ),
            ),
            Text("يجب تسجيل الدخول أولاً",style: TextStyle(color: Color(0xff18304B),fontSize: 22,fontWeight: FontWeight.bold),)
            ,Text("لاستعراض المفضلة، قم بتسجيل الدخول ",style: TextStyle(color: Color(0xff18304B),fontSize: 13,fontWeight: FontWeight.bold),)
           , Padding(
             padding: const EdgeInsets.only(top:33.0),
             child: Container(
                width: 237,
                height: 56,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  color: Color(0xff00B5F0),
                  child: Text(
                    "تسجيل الدخول",
                    style: TextStyle(color: Colors.white,fontSize: 16),
                  ),
                  onPressed: () { },
                ),
              ),
           ),


          ],
        ),
      ),
    );
  }
}
