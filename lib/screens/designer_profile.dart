import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/provider/products.dart';
import 'package:lamp/screens/test.dart';
import 'package:lamp/widgets/appbar_widgets.dart';
import 'package:lamp/widgets/prod.dart';

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

    _tabController = new TabController(vsync: this, length:3);
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
                        InkWell(
                              onTap: (){
                                Navigator.pop(context);

                            },
                            child: SvgPicture.asset("assets/icons/button_right.svg")),
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
                            suffixIcon: Container(
                              width: 15,
                              height: 12,
                              child: UnconstrainedBox(
                                child: SvgPicture.asset(
                                  "assets/icons/search.svg",
                                  fit: BoxFit.fitWidth,
                                  allowDrawingOutsideViewBox: true,
                                  matchTextDirection: true,
                                ),
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
          Directionality(
            textDirection: TextDirection.rtl,
            child: new Container(
              width: double.infinity,

              decoration: new BoxDecoration(color: Colors.white),
              child: Row(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(right:18.0),
                    child: SvgPicture.asset("assets/icons/filter_black.svg",

                    ),
            ),
                  Expanded(child: Container

                    (height: 50,
                    child: VerticalDivider(
                      color: Color(0xff707070),

                    ),
                  )),




                  new TabBar(
                      isScrollable: true,
                      controller: _tabController,
                      indicatorColor: Colors.pink,
                      indicatorSize: TabBarIndicatorSize.tab,
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
                      ]
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 20.0,
            child: new TabBarView(

              controller: _tabController,
              children: [
                Center(child: Text("gggg")),
                Center(child: Text("ffff"),),
                Center(child: Text("gggg")),

              ]
            ),
          ),





          Container(
            height: 1000,
            child: ListView.builder(
              itemCount: products.products_list.length,
              itemBuilder: (context,index){
                return                 Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Prod(
                      widthCard: 180,
                      widthButton: 167,
                      index: index,
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Prod(
                      widthCard: 180,
                      widthButton: 167,
                      index: index,
                    ),
                  ],
                );

              },

                scrollDirection: Axis.vertical,

            ),
          ),
        ],
          ),
      ),
    );

  }


}
