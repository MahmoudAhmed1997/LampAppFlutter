import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/widgets/appbar_widgets.dart';
import 'package:lamp/widgets/prod.dart';

class FavouriteSecondScreen extends StatefulWidget {
  static const routeName = '/favourite_second_screen';

  @override
  _FavouriteSecondScreenState createState() => _FavouriteSecondScreenState();
}

class _FavouriteSecondScreenState extends State<FavouriteSecondScreen> {
  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);

    return Scaffold(
      body: Stack(children: [
        Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
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
                                    right: 77,
                                    child: myLocale.languageCode=="ar"?Align(
                                      alignment: Alignment.centerRight,
                                      child: UnconstrainedBox(
                                        child: SvgPicture.asset(
                                          "assets/icons/search.svg",
                                        ),
                                      ),
                                    ):
                                    Padding(
                                      padding: const EdgeInsets.only(left:68.0),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: UnconstrainedBox(
                                          child: SvgPicture.asset(
                                            "assets/icons/search.svg",
                                          ),
                                        ),
                                      ),
                                    )
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
                Container(
                  height: 1000,
                  child: ListView(scrollDirection: Axis.vertical, children: [
                    Container(
                      height:310,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Prod(
                            widthCard: 180,
                            widthButton: 167,
                            index: 1,
                          ),
                          SizedBox(
                            width: 12.0,
                          ),
                          Prod(
                            widthCard: 180,
                            widthButton: 167,
                            index: 1,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 33,
                    ),
                    Container(
                      height: 310,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Prod(
                            widthCard: 180,
                            widthButton: 167,
                            index: 2,
                          ),
                          SizedBox(
                            width: 12.0,
                          ),
                          Prod(
                            widthCard: 180,
                            widthButton: 167,
                            index: 2,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 33,
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
