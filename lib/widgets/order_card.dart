import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lamp/provider/orders.dart';
import 'package:lamp/localization/language_constants.dart';

class OrderCard extends StatefulWidget {
   String text;
  var colorBt;
  var colorTextBt;

  OrderCard({this.text,this.colorBt,this.colorTextBt}) ;
  @override
  _OrderCardState createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {

  Orders orders = Orders();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        width: 350,
        height: 210,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0, top: 13, left: 12),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                                getTranslated(context, "order")   ,
                              style: TextStyle(
                                  color: Color(0xff18304B),
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              ":12321",
                              style: TextStyle(
                                  color: Color(0xff18304B),
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
                          height: 33,
                          width: 110,
                          child: RaisedButton(
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)),
                            color: Color(widget.colorBt),
                            child: Text(
                                widget.text      ,                        style: TextStyle(
                                  fontSize: 12, color: Color(widget.colorTextBt)),
                            ),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                    Text(
                      "500 رس",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xffF45540),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "02.02.2020, 15:30",
                      style: TextStyle(fontSize: 15, color: Color(0xff7F8FA6)),
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 12),
              child: Row(
                children: [
                  Text(
                  getTranslated(context, "products"),
                    style: TextStyle(fontSize: 15, color: Color(0xff18304B)),
                  ),
                  SizedBox(
                    width: 115,
                  ),
                  Text(
                    "13 ",
                    style: TextStyle(fontSize: 15, color: Color(0xff7F8FA6)),
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 12),
              child: Row(
                children: [
                  Text(
                  getTranslated(context, "total_price") ,                   style: TextStyle(fontSize: 15, color: Color(0xff18304B)),
                  ),
                  SizedBox(
                    width: 85,
                  ),
                  Text(
                    "500 رس",
                    style: TextStyle(fontSize: 15, color: Color(0xff7F8FA6)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
