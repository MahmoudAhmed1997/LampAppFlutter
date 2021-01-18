import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/classes/language.dart';
import 'package:lamp/provider/designers.dart';
import 'package:lamp/provider/products.dart';
import 'package:lamp/screens/new_product_screen.dart';
import 'package:lamp/widgets/designer_card.dart';
import 'package:lamp/localization/language_constants.dart';
import 'package:lamp/widgets/prod.dart';
import 'package:lamp/localization/language_constants.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';
import 'package:lamp/provider/designer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../main.dart';
import 'hoodies_screen.dart';
import 'package:lamp/provider/new_products.dart';

class Home extends StatefulWidget {
  static const routeName = '/home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Products pro = Products();
  Designers des = Designers();
  NewProducts newProducts = NewProducts();


  @override
  void initState() {
    super.initState();
    des.fetchAndSetProducts().then(
        (value) => print("Home - Designers: " + des.designersList.toString()));
    newProducts.fetchAndSetNewProducts().then((value) =>
        print("Home - NewProducts " + newProducts.newProductList.toString()));
    print( newProducts.newProductList.length);
  }

  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);

    Future _getDate() async {
      var data = await http.get("http://lampnow.sa.com/api/v1/home");
      var jsonData = json.decode(data.body);
      print(jsonData);

      return jsonData;
    }

    return Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Container(
            height: 45,
            width: 343,
            alignment: Alignment.center,
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
                  hintText: getTranslated(context, "search_product"),
                  alignLabelWithHint: true,
                  hintStyle: TextStyle(color: Color(0xff425154), fontSize: 15),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.0),
                      borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                    borderSide: new BorderSide(color: Color(0xff18304B)),
                    borderRadius: new BorderRadius.circular(6),
                  ),
                ),
              ),
              Positioned.fill(
                  right: 77,
                  child: myLocale.languageCode == "ar"
                      ? Align(
                          alignment: Alignment.centerRight,
                          child: UnconstrainedBox(
                            child: SvgPicture.asset(
                              "assets/icons/search.svg",
                            ),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.only(left: 68.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: UnconstrainedBox(
                              child: SvgPicture.asset(
                                "assets/icons/search.svg",
                              ),
                            ),
                          ),
                        ))
            ]),
          ),
        ),
        body: DefaultTabController(
          length: 3,
          child: Column(children: <Widget>[
            Container(
              color: Color(0xffFFFFFF),
              constraints: BoxConstraints(maxHeight: 150.0),
              child: TabBar(
                labelStyle:
                    TextStyle(fontSize: 12, fontFamily: 'DINNextLTArabic'),
                labelColor: Color(0xff00B5F0),
                unselectedLabelColor: Color(0xff7F8FA6),
                indicatorColor: Color(0xff00B5F0),
                tabs: [
                  Tab(
                    child: Text(getTranslated(context, "home")),
                  ),
                  Tab(
                    child: Text(getTranslated(context, "hoody")),
                  ),
                  Tab(
                    child: Text(getTranslated(context, "tshirt")),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  FutureBuilder(
                      future: _getDate(),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        if (snapshot.hasData) {
                          return Container(
                              child: ListView(
                            children: [
                              Image(
                                height: 165,
                                fit: BoxFit.fill,
                                width: double.infinity,
                                image: AssetImage(
                                    "assets/images/bunner_image.png"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 11.0, left: 8, top: 10, bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      getTranslated(context, "suggested"),
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff18304B),
                                        fontFamily:
                                            "assets/fonts/DIN Next LT Arabic Light.ttf",
                                      ),
                                    ),
                                    RaisedButton(
                                      color: Color(0xffFFFFFF),
                                      elevation: 0.0,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                          side: BorderSide(
                                              color: Color(0xffE6EAFC))),
                                      onPressed: () {
                                        print("lkf");
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            getTranslated(context, "show_all"),
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xff18304B),
                                                fontWeight: FontWeight.normal),
                                          ),
                                          SizedBox(
                                            width: 6,
                                          ),
                                          myLocale.languageCode == "ar"
                                              ? Container(
                                                  height: 7,
                                                  width: 11,
                                                  child: ImageIcon(
                                                    AssetImage(
                                                        "assets/icons/shape.png"),
                                                    color: Color(0xff18304B),
                                                  ),
                                                )
                                              : Container(
                                                  height: 7,
                                                  width: 11,
                                                  child: ImageIcon(
                                                    AssetImage(
                                                        "assets/icons/arrow.png"),
                                                    color: Color(0xff18304B),
                                                  ),
                                                )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 310.0,
                                width: double.infinity,
                                child: ListView.builder(
                                  itemCount: newProducts.newProductList.length,

                                  itemBuilder: (context, index) {
                                    return Prod(
                                      id: index,
                                      front_img: newProducts
                                          .newProductList[index].frontImg,
                                      back_img: newProducts
                                          .newProductList[index].backImg,
                                      widthCard: 150,
                                      widthButton: 134,
                                      index: index,
                                    );
                                  },
                                  scrollDirection: Axis.horizontal,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 15.0, left: 9, top: 17, bottom: 16),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      getTranslated(
                                        context,
                                        "shop_by_designers",
                                      ),
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xff18304B)),
                                    ),
                                    RaisedButton(
                                      color: Color(0xffFFFFFF),
                                      elevation: 0.0,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                          side: BorderSide(
                                              color: Color(0xffE6EAFC))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            getTranslated(
                                              context,
                                              "show_all",
                                            ),
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xff18304B),
                                                fontWeight: FontWeight.normal),
                                          ),
                                          SizedBox(
                                            width: 6,
                                          ),
                                          myLocale.languageCode == "ar"
                                              ? Container(
                                                  height: 7,
                                                  width: 11,
                                                  child: ImageIcon(
                                                    AssetImage(
                                                        "assets/icons/shape.png"),
                                                    color: Color(0xff18304B),
                                                  ),
                                                )
                                              : Container(
                                                  height: 7,
                                                  width: 11,
                                                  child: ImageIcon(
                                                    AssetImage(
                                                        "assets/icons/arrow.png"),
                                                    color: Color(0xff18304B),
                                                  ),
                                                )
                                        ],
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ),
                              Hero(
                                  tag: "card",
                                  child: Container(
                                      width: double.infinity,
                                      height: 148,
                                      child: snapshot.hasData
                                          ? ListView.builder(
                                              itemCount:
                                                  des.designersList.length,
                                              itemBuilder: (ctx, i) =>
                                                  DesignerCard(
                                                      name: des.designersList[i]
                                                          .name,
                                                      img: des.designersList[i]
                                                          .img),
                                              // Container(
                                              //     height: 50,
                                              //     width: 250,
                                              //     color: Colors.pink,
                                              //     child: Text(
                                              //       "${des.designersList[i].name}",
                                              //       style: TextStyle(fontSize: 50),
                                              //     )),
                                              scrollDirection: Axis.horizontal,
                                            )
                                          : Center(
                                              child:
                                                  CircularProgressIndicator(),
                                            ))),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 11.0, left: 8, top: 17, bottom: 18),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      getTranslated(
                                        context,
                                        "new_added",
                                      ),
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xff18304B)),
                                    ),
                                    RaisedButton(
                                      color: Color(0xffFFFFFF),
                                      elevation: 0.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        side: BorderSide(
                                            color: Color(0xffE6EAFC)),
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            getTranslated(
                                              context,
                                              "more",
                                            ),
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Color(0xff18304B),
                                                fontWeight: FontWeight.normal),
                                          ),
                                          SizedBox(
                                            width: 17,
                                          ),
                                          myLocale.languageCode == "ar"
                                              ? Container(
                                                  height: 7,
                                                  width: 11,
                                                  child: ImageIcon(
                                                    AssetImage(
                                                        "assets/icons/shape.png"),
                                                    color: Color(0xff18304B),
                                                  ),
                                                )
                                              : Container(
                                                  height: 7,
                                                  width: 11,
                                                  child: ImageIcon(
                                                    AssetImage(
                                                        "assets/icons/arrow.png"),
                                                    color: Color(0xff18304B),
                                                  ),
                                                )
                                        ],
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    NewProductsScreen()));
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 310.0,
                                width: double.infinity,
                                child: ListView.builder(
                                  itemCount: newProducts.newProductList.length,
                                  scrollDirection: Axis.horizontal,

                                  itemBuilder: (context, index) {
                                    return Prod(
                                      id: newProducts.newProductList[index].id,

                                      front_img: newProducts
                                          .newProductList[index].frontImg,
                                      back_img: newProducts
                                          .newProductList[index].backImg,
                                      widthCard: 150,
                                      widthButton: 134,
                                      index: index,
                                    );
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 35,
                              )
                            ],
                          ));
                        } else {
                          return Center(child: CircularProgressIndicator());
                        }
                      }),
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
        ));
  }
}
