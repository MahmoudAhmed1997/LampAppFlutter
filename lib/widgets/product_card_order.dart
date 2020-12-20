import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCardOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 12,
      ),
      child: Center(
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          width: 345,
          height: 90,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: 61,
                  width: 56,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/t_shirt.png"))),
                ),
                SizedBox(
                  width: 17,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "x3",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff00B5F0),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "اناء طعام للهامستر ماركة\n بيرزيني",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xff464451)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "500 رس",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xffF45540),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
