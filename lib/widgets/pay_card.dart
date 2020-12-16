import 'package:flutter/material.dart';

class PayCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Color(0xffF4F4F4))),
      height: 275,
      width: 337,
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              SizedBox(height: 20.0,),
              Container(
                width: 299,height: 1,
                child: Image.asset(
                  "assets/images/line.png",

                ),
              ),
              SizedBox(height: 15.0,),

            ],
          );
        },
        itemCount: 6,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        child: ImageIcon(
                          AssetImage("assets/icons/check_box.png"),
                          color: Color(0xff00B5F0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: ImageIcon(
                          AssetImage("assets/icons/check.png"),
                          color: Colors.white,
                          size: 10,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "الدفع عبر فيزا كارد",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff18304B)),
                      ),
                      Text(
                        "نانمن, 36221 , الأحساء , المنطقة الشرقي...",
                        style:
                            TextStyle(color: Color(0xff7F8FA6), fontSize: 13),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                  height: 20,
                  width: 20,
                  child: Image(image: AssetImage("assets/icons/visa.png")))
            ],
          );
        },
      ),
    );
  }
}
