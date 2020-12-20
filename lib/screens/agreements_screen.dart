import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/widgets/order_card.dart';

class AgreementsScreen extends StatelessWidget {
  static const routeName = '/agreements_screen';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Color(0xff00B5F0),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('الشروط و الأحكام'),
                ],
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Container(
                      height: 38,
                      width: 38,
                      child: SvgPicture.asset("assets/icons/button_right.svg")),
                )
              ],
            ),
            body: Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                      "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربىهذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى"

                    ,style: TextStyle(fontSize: 15,color: Color(0xff18304B)),),
                ))));
  }
}
