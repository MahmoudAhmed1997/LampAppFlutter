import 'package:flutter/material.dart';
import 'package:lamp/localization/language_constants.dart';

class OrderAddressScreen extends StatelessWidget {
  static const routeName = '/order_address_screen';

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white),
            height: 340,
            width: 355,
            child: Column(
              mainAxisAlignment:
              MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10,top: 5,left: 10),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: 130,
                          child: Text(
                            getTranslated(context, "full_name"),
                            style: TextStyle(
                                color:
                                Color(0xff464451),
                                fontSize: 15),
                          )),
                      Container(
                        width:130,

                        child: Text(
                          "عبد الله بركات",
                          style: TextStyle(
                              color: Color(0xff7F8FA6),
                              fontSize: 15),
                          textDirection:
                          TextDirection.rtl,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: EdgeInsets.only(right: 10,top: 5,left: 10),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Container(
                          width: 130,
                          child:Text(
                            getTranslated(context, "address"),
                            style: TextStyle(
                                color:
                                Color(0xff464451),
                                fontSize: 15),
                          )),
                      Expanded(
                        child: Container(
                          width:130,

                          child: Text(
                            "نانمن, 36221 , الأحساء , المنطقة الشرقية, قصب",
                            style: TextStyle(
                                color: Color(0xff7F8FA6),
                                fontSize: 15),
                            textDirection:
                            TextDirection.rtl,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(),
                Padding(
                  padding: EdgeInsets.only(right: 15,top: 5,left: 15),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Container(
                          width: 130,
                          child: Text(
                            getTranslated(context, "region"),
                            style: TextStyle(
                                color:
                                Color(0xff464451),
                                fontSize: 15),
                          )),
                      Expanded(
                        child: Container(
                          width:130,

                          child: Text(
                            "الرياض, المنطقة الصناعية",
                            style: TextStyle(
                                color: Color(0xff7F8FA6),
                                fontSize: 15),
                            textDirection:
                            TextDirection.rtl,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: EdgeInsets.only(right: 15,top: 5,left: 15),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Container(
                          width: 130,
                          child: Text(
                            getTranslated(context, "phone_number"),
                            style: TextStyle(
                                color:
                                Color(0xff464451),
                                fontSize: 15),
                          )),
                      Container(
                        width:130,

                        child: Text(
                          "+96652014520",
                          style: TextStyle(
                              color: Color(0xff7F8FA6),
                              fontSize: 15),
                          textDirection:
                          TextDirection.rtl,
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(),
                Padding(
                  padding: EdgeInsets.only(right: 15,top: 5,left: 15),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Container(
                          width: 130,
                          child: Text(
                            getTranslated(context, "email"),
                            style: TextStyle(
                                color:
                                Color(0xff464451),
                                fontSize: 15),
                          )),
                      Container(
                        width:130,

                        child: Text(
                          "name@email.com",
                          style: TextStyle(
                              color: Color(0xff7F8FA6),
                              fontSize: 15),
                          textDirection:
                          TextDirection.rtl,
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 5,)

              ],
            ),
          ),
        ],
      );
  }
}
