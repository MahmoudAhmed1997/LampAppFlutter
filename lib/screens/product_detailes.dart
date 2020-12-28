import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/provider/products.dart';
import 'package:lamp/widgets/appbar_widgets.dart';
import 'package:lamp/widgets/prod.dart';
import 'package:lamp/localization/language_constants.dart';
import 'package:lamp/classes/language.dart';
import 'package:lamp/main.dart';
import 'package:lamp/localization/demo_localization.dart';
import 'package:lamp/classes/language.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

import 'package:lamp/classes/language.dart';

class DetailsProductScreen extends StatefulWidget {
  static const routeName = '/product_details_screen';


  @override
  _DetailsProductScreenState createState() => _DetailsProductScreenState();
}

class _DetailsProductScreenState extends State<DetailsProductScreen> {
   Locale local;
 // DemoLocalization demoLocalization =DemoLocalization();
  List _selectedIndexs=[];
  Products products =Products();
  int id ;


  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        ListView(children: [

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right:8.0,left: 8.0),
                child: Container(
                  width: double.infinity,
                  height: 80,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child:myLocale.languageCode=="ar"? SvgPicture.asset(
                            "assets/images/right_button.svg",
                          ):SvgPicture.asset(
                            "assets/images/btn_left.svg",
                          )
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                getTranslated(context,
                                  "details_product_text",),                                  style: TextStyle(
                                    fontSize: 18, color: Color(0xff464451)),
                              ),
                            ],
                          ),
                        ),
                        SvgPicture.asset("assets/icons/share_icon.svg"),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffF9F9FF)
                  ),
                  height: 225,
                  width: 352,
                  child: Image.asset(
                    "assets/images/tsh1.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, right: 25.0,left:25 ),
                child: Container(
                  height: 85,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(

                          height: 78,
                          width:78,

                          decoration: BoxDecoration(
                            color: Color(0xffF9F9FF),
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(color: Color(0xffF9F9FF)
                            )),
                        child:
                        Center(
                          child: Image(
                            height: 61,width: 55,
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/images/tsh2.png",
                            ),
                            //color: Colors.grey,
                          ),
                        ),

                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      Container(

                        height: 78,
                        width:78,

                        decoration: BoxDecoration(
                            color: Color(0xffF9F9FF),
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(color: Color(0xffF9F9FF)
                            )),
                        child:
                        Center(
                          child: Image(
                            height: 61,width: 55,
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/images/tsh3.png",
                            ),
                            //color: Colors.grey,
                          ),
                        ),

                      ),

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right:18.0,left: 18),
                child: Text(
                  getTranslated(context,
                    "description_product",),
                  style:
                      TextStyle(fontSize: 18, color: Color(0xff18304B)),
                  textAlign: TextAlign.start,
                ),
              ),
             myLocale.languageCode=="ar"? Padding(
                padding: const EdgeInsets.only(right:18.0,left: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "500 ",
                          style: TextStyle(
                              fontSize: 19,
                              color: Color(0xffF45540),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          getTranslated(context,
                            "rs",),
                          style: TextStyle(
                              fontSize: 19,
                              color: Color(0xffF45540),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      width: 143,
                      height: 40,
                      child: Row(
                        children: [
                          SvgPicture.asset("assets/icons/plus.svg"),
                          Container(
                              color: Colors.white,
                              width: 45,
                              height: 39,
                              child: Center(
                                  child: Text(
                                "02",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff18304B)),
                              ))),
                          SvgPicture.asset("assets/icons/minus.svg"),
                        ],
                      ),
                    )
                  ],
                ),
              ):Padding(
               padding: const EdgeInsets.only(right:18.0,left: 16),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Container(
                     width: 143,
                     height: 40,
                     child: Row(
                       children: [
                         SvgPicture.asset("assets/icons/minus.svg"),
                         Container(
                             color: Colors.white,
                             width: 45,
                             height: 39,
                             child: Center(
                                 child: Text(
                                   "02",
                                   style: TextStyle(
                                       fontSize: 16, color: Color(0xff18304B)),
                                 ))),

                         SvgPicture.asset("assets/icons/plus.svg"),
                       ],
                     ),
                   ),

                   Row(
                     children: [
                       Text(
                         "500 ",
                         style: TextStyle(
                             fontSize: 19,
                             color: Color(0xffF45540),
                             fontWeight: FontWeight.bold),
                       ),
                       Text(
                         getTranslated(context,
                           "rs",),
                         style: TextStyle(
                             fontSize: 19,
                             color: Color(0xffF45540),
                             fontWeight: FontWeight.bold),
                       ),
                     ],
                   ),
                 ],
               ),
             ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(top: 21.0,right: 18,left: 18),
                child: Text(
                  getTranslated(context,
                    "sizes_available",),                      style: TextStyle(fontSize: 16, color: Color(0xff18304B)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18.0, top: 18),
                child: Container(
                  height: 45,
                  width: double.infinity,
                  child: ListView.builder(

                    itemCount: 6,

                    itemBuilder: (context,i){
                      final _isSelected=_selectedIndexs.contains(i);

                      return Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: GestureDetector(
                          onTap:(){
                            setState((){
                              if(_isSelected){
                                _selectedIndexs.remove(i);

                              }else{
                                _selectedIndexs.add(i);
                              }
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: _isSelected?Color(0xff00B5F0):Color(0xffE8E8E8))),
                            height: 43,
                            width: 68,
                            child: Center(child: Text(products.products_list[i].size)),
                          ),
                        ),
                      );

                  },

                  scrollDirection: Axis.horizontal,



                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 25.0, left: 15, right: 17, bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      getTranslated(context,
                        "suggested_products",),                        style: TextStyle(
                          color: Color(0xff18304B),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 13.0,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(0xffFFFFFF),
                          child: CircleAvatar(
                            radius: 24,
                            backgroundColor: Color(0xff00B5F0),
                            child: CircleAvatar(
                              radius: 23,
                              backgroundImage:
                                  AssetImage("assets/images/face.png"),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "محمد الخالدي",
                          style: TextStyle(
                              fontSize: 15, color: Color(0xff18304B)),
                        ),
                      ],
                    ),
                  ],
                ),
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
                      index: 1,
                    ),
                    SizedBox(
                      width: 5.0,
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
              Container(
                height: 310,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Prod(
                      widthCard: 180,
                      widthButton: 167,
                      index: 3,
                    ),
                    SizedBox(
                      width:5.0,
                    ),
                    Prod(
                      widthCard: 180,
                      widthButton: 167,
                      index: 4,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 28,
              ),
            ],
          ),
        ]),
        Positioned(
          left: 20,
          right: 20,
          bottom: 15,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                color: Color(0xff00B5F0),
                margin: EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Container(
                  width: 280,
                  height: 53,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 22,
                          height: 24,
                          child: ImageIcon(
                            AssetImage(
                              "assets/icons/icon_cart.png",
                            ),
                            color: Colors.white,
                          )),
                      SizedBox(width: 10,),
                      Text(
                        getTranslated(context,
                          "add_to_cart",),                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),

              Card(
                color: Color(0xff18304B),
                margin: EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Container(
                  width: 55,
                  height: 55,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          width: 22,
                          height: 24,
                          child: ImageIcon(
                            AssetImage(
                              "assets/icons/fav.png",
                            ),
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ]),
    );
  }
}
