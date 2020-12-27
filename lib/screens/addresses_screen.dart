import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/widgets/addrss_card.dart';
import 'package:lamp/widgets/address_card_delivery.dart';
import 'package:lamp/widgets/product_card.dart';
import 'package:lamp/localization/language_constants.dart';
import 'package:lamp/screens/order_adress_screen.dart';
import 'new_delivery _address.dart';

class AddressesScreen extends StatefulWidget {
  static const routeName = '/addresses_screen';

  @override
  _AddressesScreenState createState() => _AddressesScreenState();
}

class _AddressesScreenState extends State<AddressesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Color(0xff00B5F0),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(getTranslated(context, "delivery_addresses"),
            ),
          ],
        ),
        leading:
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Container(
                height: 38,
                width: 38,
                child: SvgPicture.asset("assets/icons/button_right.svg")),
          )

      ),

      body: Stack(overflow: Overflow.visible, fit: StackFit.expand, children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: AddressCardDelivery(),


                ),
              ),


            ],

          ),
        ),
        Positioned(
          bottom: 30,right: 20,left: 20,
          child: InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NewDeliveryAddressesScreen()));

            },
            child: Container(
              alignment: Alignment.bottomCenter,
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
                        getTranslated(context, "new_delivery_address"),
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

      ]),
    );
  }
}
