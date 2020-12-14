import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lamp/widgets/product_grid.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        color: Colors.white,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
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
                          color: Colors.amber,
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
                        labelStyle:
                            TextStyle(color: Color(0xffA4B0BE), fontSize: 15),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide.none),
                        focusedBorder: OutlineInputBorder(
                          borderSide: new BorderSide(color: Color(0xff18304B)),
                          borderRadius: new BorderRadius.circular(12),
                        ),
                      ),
                    ),
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
                                fontSize: 13, color: Color(0xff383838)),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "تي شيرت (T Shirt)",
                            style: TextStyle(
                                fontSize: 13, color: Color(0xff383838)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Center(
                          child: ProductsGrid(),

                            // child: Directionality(
                            //     textDirection: TextDirection.rtl,
                            //     child: Container(
                            //       height: 1500,
                            //       width: 700,
                            //       child: ListView(
                            //         children: [
                            //           Image(
                            //             image: AssetImage(
                            //                 "assets/images/sub_bunner.png"),
                            //           ),
                            //           Padding(
                            //             padding: const EdgeInsets.only(
                            //                 right: 11.0,
                            //                 left: 8,
                            //                 top: 23,
                            //                 bottom: 20),
                            //             child: Row(
                            //               mainAxisAlignment:
                            //                   MainAxisAlignment.spaceBetween,
                            //               children: [
                            //                 Text(
                            //                   "مقترحة لك",
                            //                   style: TextStyle(
                            //                       fontSize: 16,
                            //                       color: Color(0xff18304B)),
                            //                 ),
                            //                 RaisedButton(
                            //                   color: Color(0xffFFFFFF),
                            //                   shape: RoundedRectangleBorder(
                            //                     borderRadius:
                            //                         BorderRadius.circular(50.0),
                            //                   ),
                            //                   onPressed: () {
                            //                     print("lkf");
                            //                   },
                            //                   child: Row(
                            //                     mainAxisAlignment:
                            //                         MainAxisAlignment
                            //                             .spaceEvenly,
                            //                     children: [
                            //                       Text(
                            //                         "عرض الكل",
                            //                         style: TextStyle(
                            //                             fontSize: 12,
                            //                             color:
                            //                                 Color(0xff18304B)),
                            //                       ),
                            //                       Icon(
                            //                         Icons
                            //                             .arrow_back_ios_rounded,
                            //                         size: 10,
                            //                       )
                            //                     ],
                            //                   ),
                            //                 ),
                            //               ],
                            //             ),
                            //           ),
                            //           Container(
                            //               height: 1000, child: ProductsGrid()),
                            //         ],
                            //       ),
                            //     ))),
                        ),Center(
                          child: Text("Empty"),
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
