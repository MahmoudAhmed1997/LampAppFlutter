import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/provider/products.dart';
import 'package:lamp/screens/test.dart';
import 'package:lamp/widgets/appbar_widgets.dart';
import 'package:lamp/widgets/prod.dart';
import 'package:lamp/widgets/testtt.dart';

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
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 162,
              color: Color(0xff00B5F0),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
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
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    "250 Product , 152 Order",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontFamily:
                                            "assets/fonts/Poppins-Regular.ttf"),
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
                          InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: SvgPicture.asset(
                                  "assets/icons/button_right.svg")),
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
                                hintText: "ابحث عن منتج",
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
                  ],
                ),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: new Container(
                width: double.infinity,
                decoration: new BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18.0),
                      child: SvgPicture.asset(
                        "assets/icons/filter_black.svg",
                      ),
                    ),
                    Expanded(
                        child: Container(
                      height: 50,
                      child: VerticalDivider(
                        color: Color(0xff707070),
                      ),
                    )),
                    new TabBar(
                        indicatorColor: Color(0xff00B5F0),
                        isScrollable: true,
                        controller: _tabController,
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelColor: Color(0xff00B5F0),
                        unselectedLabelColor: Color(0xff7F8FA6),
                        labelStyle: TextStyle(color: Colors.red),
                        tabs: [
                          Tab(
                            child: Text(
                              "الرئيسية",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "الهودي(Hoodies)",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "تي شيرت (T Shirt)",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ]),
                  ],
                ),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: new TabBarView(controller: _tabController, children: [
                  Center(child: HomePageDesigner()),
                  Center(
                    child: HomePageDesigner(),
                  ),
                  Center(child: HomePageDesigner()),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
