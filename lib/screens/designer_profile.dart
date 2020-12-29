import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/provider/products.dart';
import 'package:lamp/screens/test.dart';
import 'package:lamp/widgets/appbar_widgets.dart';
import 'package:lamp/widgets/prod.dart';
import 'package:lamp/widgets/home_page_designer.dart';
import 'package:lamp/localization/language_constants.dart';

class DesignerProfile extends StatefulWidget {
  static const routeName = '/designer_profile';

  @override
  _DesignerProfileState createState() => _DesignerProfileState();
}

class _DesignerProfileState extends State<DesignerProfile>
    with SingleTickerProviderStateMixin {
  double screenSize;
  double screenRatio;
  AppBar appBar;
  bool tapscroll = false;

  TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }



  Products products = Products();
  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 165,
            color: Color(0xff00B5F0),
            child: Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, top: 35),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child:
                          myLocale.languageCode=="ar"?SvgPicture.asset(
                              "assets/icons/button_right.svg"):SvgPicture.asset(
                              "assets/icons/button_left.svg")

                      ),
                      myLocale.languageCode=="ar"?
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
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "${ getTranslated(context, "product") + "250 " + getTranslated(context, "order")+ "152" }",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontFamily:
                                            "assets/fonts/Poppins-Regular.ttf"),
                                  ),
                                ],
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
                      ):Row(
                        children: [
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
                          SizedBox(
                            width: 13.0,
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "محمد الخالدي",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "${"250 " + getTranslated(context, "product") + "152" + getTranslated(context, "order")}",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontFamily:
                                        "assets/fonts/Poppins-Regular.ttf"),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      SvgPicture.asset("assets/icons/cart.svg"),
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
                        height: 40,
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
                              hintText:
                                  getTranslated(context, "search_product"),
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
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: new BoxDecoration(color: Colors.white),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 18.0, left: 18),
                  child: SvgPicture.asset(
                    "assets/icons/filter_black.svg",
                  ),
                ),
                Container(
                  height: 50,
                  //  width: double.infinity,
                  child: VerticalDivider(
                    color: Color(0xff707070),
                  ),
                ),
                Expanded(
                  child: TabBar(
                      indicatorColor: Color(0xff00B5F0),
                      isScrollable: tapscroll,
                      controller: _tabController,
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelColor: Color(0xff00B5F0),
                      unselectedLabelColor: Color(0xff7F8FA6),
                      labelStyle: TextStyle(color: Colors.red),
                      tabs: [
                        Tab(
                          child: Text(
                            getTranslated(context, "home"),
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            getTranslated(context, "hoody"),
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            getTranslated(context, "tshirt"),
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: 1000,
              child: TabBarView(controller: _tabController, children: [
                HomePageDesigner(),
                HomePageDesigner(),
                HomePageDesigner(),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
