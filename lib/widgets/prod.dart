import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lamp/provider/product.dart';
import 'package:lamp/provider/products.dart';
import 'package:lamp/screens/product_detailes.dart';
import 'package:lamp/localization/language_constants.dart';
import 'package:lamp/router/route_constants.dart';

class Prod extends StatelessWidget {
  final double widthCard;
  final double widthButton;
  final int index;
  final int id;
  final String front_img;
  final String back_img;



  Products products = Products();

  Prod({this.widthCard, this.widthButton, this.index, this.id,this.front_img, this.back_img});
  //Designer product = Designer();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, left: 8),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DetailsProductScreen()));
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.white,
              border: Border.all(color: Color(0xffE6EAFC), width: 1)),
          width: widthCard,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(color: Color(0xffFFFFFF))),
                height: 143,
                width: double.infinity,
                child: Container(
                  color: Color(0xffF9F9FF),
                  child: Image.network(front_img)
                  
                  // Image(
                  //   fit: BoxFit.contain,
                  //   image: NetworkImage(
                  //    front_img,
                  //   ),
                  // ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 21,
                        width: 52,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xffF4F4F4)),
                        child: Center(
                            child: Text(
                          "Hoodies",
                          style: TextStyle(
                            fontSize: 13.0,
                          ),
                        )),
                      ),
                      Text(

                        getTranslated(context, "description_prod"),
                        style: TextStyle(
                            // fontFamily: "assets/fonts/ArbFONTS-DINNextLTArabic-Regular-2.ttf",
                            fontSize: 13,
                            color: Color(0xff464451)),
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Text(
                               "30",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xffF45540),
                                ),
                              ),
                              Text(
                                getTranslated(
                                  context,
                                  "rs",
                                ),
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xffF45540),
                                ),
                              )
                            ],
                          ),
                          SizedBox(width: 3),
                          Row(
                            children: [
                              Text(
                                "750",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff888888),
                                    decoration: TextDecoration.lineThrough),
                              ),
                              Text(
                                getTranslated(
                                  context,
                                  "rs",
                                ),
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff888888),
                                    decoration: TextDecoration.lineThrough),
                              )
                            ],
                          ),
                        ],
                      ),
                      Center(
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            width: widthButton,
                            height: 42.5,
                            child: RaisedButton(
                              color: Color(0xffF9F9FF),
                              elevation: 0.0,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/shopping_cart.svg",
                                    color: Color(0xff18304B),
                                  ),
                                  Text(
                                    getTranslated(context, "add_to_cart"),
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff18304B),
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        DetailsProductScreen()));
                              },
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
