import 'package:flutter/material.dart';
import 'package:lamp/provider/payments.dart';
import 'package:lamp/localization/language_constants.dart';

class PayCard extends StatefulWidget {


  @override
  _PayCardState createState() => _PayCardState();
}

class _PayCardState extends State<PayCard> {

  Payments payments =Payments();
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
        itemCount: payments.payments_list.length,
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
                  Container(
                    decoration: BoxDecoration(
                        color: !payments.payments_list[index].isChecked
                            ? Color(0xffF9F9FF)
                            : Color(0xff00B5F0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        )),
                    width: 27,
                    height: 27,
                    child:Theme(
                      data: ThemeData(

                        unselectedWidgetColor: Colors.transparent, // Your color
                      ),
                      child: Checkbox(



                        activeColor: Colors.transparent,
                        autofocus: false,
                        // checkColor: Colors.white,
                        value: payments.payments_list[index].isChecked,
                        //  tristate: false,
                        onChanged: (bool isChecked1) {
                          setState(() {
                            payments.payments_list[index].isChecked = !payments.payments_list[index].isChecked;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        getTranslated(context, "pay_visa_card"),
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff18304B)),
                      ),
                      Text(
                        payments.payments_list[index].detailes,
                        style:
                            TextStyle(color: Color(0xff7F8FA6), fontSize: 13),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                  height: 51,
                  width: 20,
                  child: Image(image: AssetImage( payments.payments_list[index].image,
                  )))
            ],
          );
        },
      ),
    );
  }
}
