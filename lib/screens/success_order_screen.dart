import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lamp/screens/home_screen.dart';
import 'package:lamp/screens/order_information_screen.dart';
import 'package:lamp/localization/language_constants.dart';

import 'order_informations.dart';

class SuccessOrderScreen extends StatelessWidget {
  static const routeName = '/success_order_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: SvgPicture.asset("assets/images/success.svg"),
          ),
          Text(
              getTranslated(context, "request_successful"),
            style: TextStyle(
                color: Color(0xff464451),
                fontSize: 32,
                fontWeight: FontWeight.bold),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "15210 ",
                    style: TextStyle(
                        color: Color(0xff8F92A1),
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    getTranslated(context, "order_number"),
                    style: TextStyle(
                        color: Color(0xff8F92A1),
                        fontSize: 17,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              Text(
                getTranslated(context, "thank_choosing_products"),
                style: TextStyle(
                  color: Color(0xff8F92A1),
                  fontSize: 17,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                getTranslated(context, "can_track_order"),
                style: TextStyle(color: Color(0xff464451), fontSize: 15),
              ),
              Text(
                "Y50211",
                style: TextStyle(color: Color(0xffF45540), fontSize: 15),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                getTranslated(context, "expecte_date_receipt"),
                style: TextStyle(color: Color(0xff464451), fontSize: 15),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "20/5/2020 ",
                    style: TextStyle(
                      color: Color(0xff464451),
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    getTranslated(context, "thursday"),
                    style: TextStyle(color: Color(0xff464451), fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Container(
                width: 261,
                height: 51,
                child: RaisedButton(
                  child: Text(
                      getTranslated(context, "continuing_shopping")   ,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                  color: Color(0xff00B5F0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));

                  },
                ),
              ),
              SizedBox(
                height: 17,
              ),
              FlatButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OrderInformation()));
                },
                child: Text(
                    getTranslated(context, "status_request")      ,
                  style: TextStyle(
                      color: Color(0xff18304B),
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
