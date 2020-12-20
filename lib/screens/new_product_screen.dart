import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/screens/fliters_screen.dart';
import 'package:lamp/widgets/appbar_widgets.dart';
import 'package:lamp/widgets/prod.dart';

class NewProductsScreen extends StatefulWidget {
  static const routeName = '/new_products_screen';

  @override
  _NewProductsScreenState createState() => _NewProductsScreenState();
}

class _NewProductsScreenState extends State<NewProductsScreen> {
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
                  height: 156,
                  color: Color(0xff00B5F0),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                  child: SvgPicture.asset(
                                "assets/icons/button_right.svg",
                              ),
                              onTap: (){
                                    Navigator.pop(context);
                              },
                              ),
                              Text(
                                "أضيف حديثاً",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              SvgPicture.asset("assets/icons/cart.svg"),
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
                                  prefixIcon:UnconstrainedBox(
                                    child: SvgPicture.asset(
                                      "assets/icons/search.svg",

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
        Positioned(
          left: 44,
          right: 44,
          bottom: 22,
          child: Card(
            color: Color(0xff18304B),
            margin: EdgeInsets.symmetric(vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Container(
              width: 310,
              height: 57,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      width: 11,
                      height: 6,
                      child: ImageIcon(
                        AssetImage(
                          "assets/icons/button_down.png",
                        ),
                        color: Colors.white,
                      )),
                  Text(
                    " عرض : الأكثر مبيـــعاً",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  SizedBox(width: 5,),
                  Container(
                      height: 34,
                      width: 40,
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5.0),
                                    topRight: Radius.circular(5.0)),
                              ),
                              isScrollControlled: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              isDismissible: true,
                              context: context,
                              builder: (context) => FractionallySizedBox(

                                child: FiltersProducts(),
                              ));
                        },
                        child: ImageIcon(
                          AssetImage(
                            "assets/icons/icon 3.png",
                          ),

                          color: Colors.white,

                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
