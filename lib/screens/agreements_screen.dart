import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/localization/language_constants.dart';
import 'package:lamp/widgets/order_card.dart';

class AgreementsScreen extends StatelessWidget {
  static const routeName = '/agreements_screen';

  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);

    return  Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              centerTitle: true,
              backgroundColor: Color(0xff00B5F0),
              title: Text(
              getTranslated(context, "agreements") ,style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18),),
              leading:
              myLocale.languageCode == "ar"?Padding(
                padding:  EdgeInsets.only(right: 16),
                child: Container(
                  height: 38,
                  width: 38,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child:
                    SvgPicture.asset("assets/icons/button_right.svg"),

                  ),
                ),
              ):
              Padding(
                padding: const EdgeInsets.only(left:16.0),
                child: Container(
                  height: 38,
                  width: 38,
                  child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child:
                      SvgPicture.asset("assets/icons/button_left.svg")
                  ),
                ),
              )
            ),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                  "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربىهذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى"

                ,style: TextStyle(fontSize: 15,color: Color(0xff18304B)),),
            ));
  }
}
