import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lamp/screens/home.dart';
import 'package:lamp/screens/hoodies_screen.dart';
import 'package:lamp/widgets/bottomAppBarItems.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        color: Colors.white,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            bottomNavigationBar: BottomAppBarItems(
              index: 5,
            ),
            backgroundColor: Color(0xffFFFFFF),
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0.0,
              title: Row(
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
                          filled: true,
                          fillColor: Color(0xffFAFAFA),
                          labelText: "ابحث عن منتج",
                          alignLabelWithHint: true,
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
            ),
            // bottomNavigationBar: BottomAppBarItems(
            //   index: 2,
            // ),
            body: DefaultTabController(
              length: 3,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Column(children: <Widget>[
                  Container(
                    color: Color(0xffFFFFFF),
                    constraints: BoxConstraints(maxHeight: 150.0),
                    child: TabBar(
                      tabs: [
                        Tab(
                          child: Text(
                            "الرئيسية",
                            style: TextStyle(
                                fontSize: 13, color: Color(0xff4349B5)),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "الهودي(Hoodies)",
                            style: TextStyle(
                                fontSize: 13, color: Color(0xff7F8FA6)),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "تي شيرت (T Shirt)",
                            style: TextStyle(
                                fontSize: 13, color: Color(0xff7F8FA6)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Container(
                          child: Home(),
                        ),
                        Container(
                          child: HoodScreen(),
                        ),
                        Center(
                          child: Text("Empty"),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            )));
  }
}
