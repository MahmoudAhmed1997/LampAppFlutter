import 'package:flutter/material.dart';

class OrderReceiptScreen extends StatelessWidget {
  static const routeName = '/receipt_order_screen';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.white),
          height: 340,
          width: 355,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 20, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 130,
                        child: Text(
                          "الطلب",
                          style:
                              TextStyle(color: Color(0xff464451), fontSize: 15),
                        )),
                    Container(
                      width: 80,
                      child: Text(
                        "500 رس",
                        style:
                            TextStyle(color: Color(0xff7F8FA6), fontSize: 15),
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.only(right: 20, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 130,
                        child: Text(
                          "خدمة التوصيل",
                          style:
                              TextStyle(color: Color(0xff464451), fontSize: 15),
                        )),
                    Container(
                      width: 80,
                      child: Text(
                        "500 رس",
                        style:
                            TextStyle(color: Color(0xff7F8FA6), fontSize: 15),
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.only(right: 20, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 130,
                        child: Text(
                          "ض.ق.م",
                          style:
                              TextStyle(color: Color(0xff464451), fontSize: 15),
                        )),
                    Container(
                      width: 80,
                      child: Text(
                        "500 رس",
                        style:
                            TextStyle(color: Color(0xff7F8FA6), fontSize: 15),
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.only(right: 20, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 130,
                        child: Text(
                          "كوبون الخصم",
                          style:
                              TextStyle(color: Color(0xff464451), fontSize: 15),
                        )),
                    Container(
                      width: 80,
                      child: Text(
                        "500 رس",
                        style:
                            TextStyle(color: Color(0xff7F8FA6), fontSize: 15),
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.only(right: 20, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 130,
                        child: Text(
                          "الاجمالي",
                          style:
                              TextStyle(color: Color(0xff00B5F0), fontSize: 15),
                        )),
                    Container(
                      width: 80,
                      child: Text(
                        "500 رس",
                        style:
                            TextStyle(color: Color(0xff00B5F0), fontSize: 15),
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              )
            ],
          ),
        ),
        SizedBox(height: 12,),
        Container(
          height: 62,
          width: 351,
          decoration: BoxDecoration(
              color: Color(0xff7F8FA6), borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("الرقم الضريبي vat",style: TextStyle(fontSize: 15,color: Colors.white),),Text("31030733230000003",style: TextStyle(fontSize: 15,color: Colors.white),)],
            ),
          ),
        )
      ],
    );
  }
}