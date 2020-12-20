import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lamp/screens/home.dart';
import 'package:lamp/screens/hoodies_screen.dart';
import 'package:lamp/screens/test.dart';
import 'package:lamp/screens/user_profile_screen.dart';
import 'package:lamp/widgets/bottomAppBarItems.dart';

import 'cart_screen.dart';
import 'favourite_screen.dart';
import 'orders_list.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>with TickerProviderStateMixin {
  final PageStorageBucket bucket = PageStorageBucket();
  TabController tabController;

  final List<Widget> mainScreens = [
    HomeScreen(),
    OrdersListScreen(),
    CartsScreen(),
    FavouriteScreen(),
    UserProfileScreen(),
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5,vsync:this);
    tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        color: Colors.white,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
               bottomNavigationBar:
          SafeArea(
          child: Material(
          color: Colors.white,
          elevation: 10,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: BottomAppBar(

              child: TabBar(
                physics: NeverScrollableScrollPhysics(),

                controller: tabController,
                tabs: [
                  Tab(
                    icon: SvgPicture.asset("assets/icons/home.svg",
                        color: tabController.index == 0
                            ? Color(0xff00B5F0)
                            : Color(0xff7F8FA6)),
                    text: 'الرئيسية',
                  ),
                  Tab(
                    icon: SvgPicture.asset(
                      "assets/icons/i_categories.svg",
                      color: tabController.index == 1
                          ? Color(0xff00B5F0)
                          : Color(0xff7F8FA6),
                    ),
                    text: 'الطلبات',
                  ),
                  Tab(
                    icon: SvgPicture.asset(
                      "assets/icons/icon_shop.svg",
                      color: tabController.index == 2
                          ? Color(0xff00B5F0)
                          : Color(0xff7F8FA6),
                    ),
                    text: 'سلة الشراء',
                  ),
                  Tab(
                    icon: SvgPicture.asset(
                      "assets/icons/favourite.svg",
                      color: tabController.index == 3
                          ? Color(0xff00B5F0)
                          :  Color(0xff7F8FA6),
                    ),
                    text: 'المفضلة',
                  ),
                  Tab(
                    icon: SvgPicture.asset(
                      "assets/icons/user_icon.svg",
                      color: tabController.index == 4
                          ? Color(0xff00B5F0)
                          : Color(0xff7F8FA6),
                    ),
                    text: 'الحساب',
                  ),
                ],
                labelStyle: TextStyle(fontSize: 11),
                labelColor: Color(0xff00B5F0),
                unselectedLabelColor: Color(0xff7F8FA6),
                isScrollable: false,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Theme.of(context).primaryColor,
                indicator: UnderlineTabIndicator(
                  insets: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 72.0),
                  borderSide: BorderSide(color: Color(0xff00B5F0), width: 3),
                ),
              ),
            ),
          ),
        ),
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
