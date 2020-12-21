import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/widgets/appbar_widgets.dart';
import 'package:lamp/widgets/product_card.dart';
import 'package:lamp/widgets/prod.dart';

class OrdersFirstScreen extends StatefulWidget {
  static const routeName = '/order_first_screen';

  @override
  _OrdersFirstScreenState createState() => _OrdersFirstScreenState();
}

class _OrdersFirstScreenState extends State<OrdersFirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(overflow: Overflow.visible, fit: StackFit.expand, children: [
        ListView(children: [
          Directionality(
            textDirection: TextDirection.rtl,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 98,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:8.0,right: 20,left: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "assets/images/right_button.svg",
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    "اتمام الطلب",
                                    style: TextStyle(
                                        fontSize: 16, color: Color(0xff464451)),
                                  ),
                                ],
                              ),
                              Text(
                                "تفاصيل الطلب",
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xff464451)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15,),
                        Container(
                            height:15 ,width: 257,

                            child: SvgPicture.asset("assets/images/progress1.svg"))
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 18, right: 18, top: 18),
                    child: Text(
                      "قائمة المشتريات",
                      style: TextStyle(fontSize: 15, color: Color(0xff323643)),
                    ),
                  ),
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                  Center(
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Color(0xffF4F4F4))),
                        height: 275,
                        width: 337,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xffF4F4F4))),
                                child: Center(
                                    child: Text(
                                  "ملاحظات على الطلب (اختياري)",
                                  style: TextStyle(
                                      color: Color(0xff464451), fontSize: 15),
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 35.0),
                                child: Center(
                                    child: Text(
                                  "ان كنت بحاجة لتنبيه المتجر الى أمر ما في الطلب",
                                  style: TextStyle(
                                      color: Color(0xff464451), fontSize: 14),
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 21.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 120,
                                      width: 284,
                                      child: TextFormField(
                                        maxLines: 8,
                                        minLines: 5,
                                        enableInteractiveSelection: false,
                                        style: TextStyle(color: Colors.grey),
                                        key: ValueKey("ملاحظة"),
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return '';
                                          }
                                          return null;
                                        },
                                        keyboardType: TextInputType.text,
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.all(10),
                                          alignLabelWithHint: true,
                                          filled: true,
                                          fillColor: Color(0xffEBEBEB),
                                          labelText: "اكتب الملاحظة هنا..",
                                          labelStyle: TextStyle(
                                              color: Color(0xffA4B0BE),
                                              fontSize: 15),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              borderSide: BorderSide.none),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: new BorderSide(
                                                color: Color(0xff18304B)),
                                            borderRadius:
                                                new BorderRadius.circular(12),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ])),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Center(
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Color(0xffF4F4F4))),
                        height: 275,
                        width: 337,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xffF4F4F4))),
                                child: Center(
                                    child: Text(
                                  "الكوبونات والخصومات",
                                  style: TextStyle(
                                      color: Color(0xff464451), fontSize: 15),
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 23.0),
                                child: Center(
                                    child: Text(
                                  "هل تمتلك كوبون خصم؟",
                                  style: TextStyle(
                                      color: Color(0xff464451), fontSize: 14),
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 45,
                                      width: 284,
                                      child: TextFormField(
                                        textAlign: TextAlign.center,
                                        enableInteractiveSelection: false,
                                        style: TextStyle(color: Colors.grey),
                                        key: ValueKey("رقم الكوبون"),
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return '';
                                          }
                                          return null;
                                        },
                                        keyboardType: TextInputType.text,
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.all(10),
                                          alignLabelWithHint: true,
                                          filled: true,
                                          fillColor: Color(0xffEBEBEB),
                                          hintText: "ادخل رقم الكوبون",
                                          hintStyle: TextStyle(
                                              color: Color(0xffA4B0BE),
                                              fontSize: 15),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              borderSide: BorderSide.none),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: new BorderSide(
                                                color: Color(0xff18304B)),
                                            borderRadius:
                                                new BorderRadius.circular(12),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20.0,),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border:
                                    Border.all(color: Color(0xff00B5F0))),
                                width: 280,
                                height: 45,
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  color: Colors.white,
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "فحص الكوبون",
                                        style: TextStyle(
                                            color: Color(0xff00B5F0),
                                            fontSize: 14),
                                      ),
                                    ],
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ])),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Center(
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Color(0xffF4F4F4))),
                        height: 275,
                        width: 337,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    border:
                                    Border.all(color: Color(0xffF4F4F4))),
                                child: Center(
                                    child: Text(
                                      "ملخص الطلبية",
                                      style: TextStyle(
                                          color: Color(0xff464451), fontSize: 15),
                                    )),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  width: double.infinity,

                                  color: Color(0xf18304B),

                                  child: Padding(
                                    padding: const EdgeInsets.all(30.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("تكلفة المشتريات",style: TextStyle(fontSize: 16,color: Color(0xff7F8FA6)),),
                                          Text("500 رس",style: TextStyle(fontSize: 16,color: Color(0xff7F8FA6)),),
                                        ],),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("تكلفة المشتريات",style: TextStyle(fontSize: 16,color: Color(0xff7F8FA6)),),
                                          Text("500 رس",style: TextStyle(fontSize: 16,color: Color(0xff7F8FA6)),),
                                        ],),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("تكلفة المشتريات",style: TextStyle(fontSize: 16,color: Color(0xff7F8FA6)),),
                                          Text("500 رس",style: TextStyle(fontSize: 16,color: Color(0xff7F8FA6)),),
                                        ],),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("الاجمالي",style: TextStyle(fontSize: 17,color: Color(0xff18304B),fontWeight: FontWeight.bold),),
                                          Text("500 رس",style: TextStyle(fontSize: 17,color: Color(0xff18304B),fontWeight: FontWeight.bold),),
                                        ],),
                                    ],),
                                  ),),
                              )


                            ])),
                  ),


                ],
              ),
            ),
          ),
        ]),
        Positioned(
          left: 20,
          right: 20,
          bottom: 25,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                color: Color(0xff00B5F0),
                margin: EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
                  width: 330,
                  height: 54,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "التالي",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
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
