import 'package:expand_widget/expand_widget.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AboutAppScreen extends StatefulWidget {
  static const routeName = '/about_app';

  @override
  _AboutAppScreenState createState() => _AboutAppScreenState();
}

class _AboutAppScreenState extends State<AboutAppScreen> {
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
            Text(
              'عن التطبيق',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Container(
                height: 38,
                width: 38,
                child: InkWell(
                  onTap:(){
                    Navigator.pop(context);},
                    child: SvgPicture.asset("assets/icons/button_right.svg"))),
          )
        ],
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          children: [
            SizedBox(
              height: 31.0,
            ),
            Container(
              height: 253,
              width: 335,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/contain.png"))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 15, left: 19),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "أفضل وسيلة تسوق وشراء عبر الانترنت",
                    style: TextStyle(
                        color: Color(0xff18304B),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص الع",
                    style: TextStyle(fontSize: 15, color: Color(0xff18304B)),
                  )
                ],
              ),
            ),
            Container(
              height: 165,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "لا تتردد بمحادثتنا عبر خدمة الدعم الفني على الواتس اب",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Text(
                    "+90 530 916 35 41",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 50,
                    width: 171,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white)),
                    child: FlatButton(
                      child: Center(
                          child: Text(
                        "تحدث معنا الأن   ",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )),
                    ),
                  )
                ],
              ),
              color: Color(0xff6FBF30),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                    child: Image.asset(
                  "assets/images/line.png",
                  height: 53,
                  color: Color(0xffECEBE7),
                )),
                Expanded(
                  child: Container(
                    height: 55,
                    width: 207,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      border: Border.all(color: Color(0xffECEBE7)),
                    ),
                    child: Center(
                        child: Text(
                      "الأسئلة الشائعة",
                      style: TextStyle(
                          color: Color(0xff18304B),
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                Expanded(
                    child: Image.asset(
                  "assets/images/line.png",
                  height: 53,
                  color: Color(0xffECEBE7),
                )),
              ],
            ),
            SizedBox(height: 11),
            Center(
              child: Text(
                "بامكــانك التواصل معنـا في حال لم تجد اجـابتك",
                style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff00B5F0),
                    fontWeight: FontWeight.normal),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  width: 345,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                      color: Colors.white,border: Border.all(color: Color(0xffF4F4F4))
                  ),
                  child: ExpandablePanel(

                    header: Padding(
                      padding: const EdgeInsets.only(top:10.0,left: 15,right: 15,bottom: 15),
                      child: Text( "السؤال الشائع الأول و الإجابة عليه",
                        maxLines: 3,
                        style:
                        TextStyle(fontSize: 16, color: Color(0xff18304B)),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    expanded: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text(
                            "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف",
                            style: TextStyle(fontSize: 14,color: Color(0xff18304B)),

                            softWrap: true,
                            textDirection: TextDirection.rtl,
                          ),
                        )),
                    tapHeaderToExpand: true,
                    hasIcon: true,
                  ),
                ),
              ),
            ),

            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  width: 345,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                    color: Colors.white,border: Border.all(color: Color(0xffF4F4F4))
                  ),
                  child: ExpandablePanel(

                    header: Padding(
                      padding: const EdgeInsets.only(top:10.0,left: 15,right: 15,bottom: 15),
                      child: Text( "السؤال الشائع الأول و الإجابة عليه",
                        maxLines: 3,
                        style:
                        TextStyle(fontSize: 16, color: Color(0xff18304B)),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    expanded: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text(
                            "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف",
                            style: TextStyle(fontSize: 14,color: Color(0xff18304B)),

                            softWrap: true,
                            textDirection: TextDirection.rtl,
                          ),
                        )),
                    tapHeaderToExpand: true,
                    hasIcon: true,
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  width: 345,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                      color: Colors.white,border: Border.all(color: Color(0xffF4F4F4))
                  ),
                  child: ExpandablePanel(

                    header: Padding(
                      padding: const EdgeInsets.only(top:10.0,left: 15,right: 15,bottom: 15),
                      child: Text( "السؤال الشائع الأول و الإجابة عليه",
                        maxLines: 3,
                        style:
                        TextStyle(fontSize: 16, color: Color(0xff18304B)),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    expanded: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text(
                            "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف",
                            style: TextStyle(fontSize: 14,color: Color(0xff18304B)),

                            softWrap: true,
                            textDirection: TextDirection.rtl,
                          ),
                        )),
                    tapHeaderToExpand: true,
                    hasIcon: true,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
