import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lamp/provider/product.dart';
import 'package:lamp/provider/products.dart';
import 'package:lamp/screens/product_detailes.dart';

class Prod extends StatelessWidget {
  final double widthCard;
  final double widthButton;
  final int index;

  Prod({this.widthCard, this.widthButton, this.index});

  Products products = Products();
  Product product = Product();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.white,
            border: Border.all(color: Color(0xffE6EAFC), width: 1)),
        width: widthCard,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(color: Color(0xffFFFFFF))),
              height: 143,
              width: double.infinity,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsProductScreen()));
                },
                child: Container(
                  color: Color(0xffF9F9FF),
                  child: Image(
                    fit: BoxFit.contain,
                    image: AssetImage(
                      products.products_list[index].imagePath,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
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
                      style: TextStyle(fontSize: 13.0),
                    )),
                  ),
                  Text("تصميم عصري شباب مفعم بالقوة والحيوية"),
                  Row(
                    children: [
                      Text(
                        " 500 ر.س",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xffF45540),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " 750 ر.س",
                        style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff888888),
                            decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        width: widthButton,
                        height: 33.5,
                        child: RaisedButton(
                          color: Color(0xffF9F9FF),
                          elevation: 0.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset(
                                "assets/icons/shopping_cart.svg",
                                color: Color(0xff18304B),
                              ),
                              Text(
                                "أضف السلة",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xff18304B)),
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => DetailsProductScreen()));
                          },
                        )),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
