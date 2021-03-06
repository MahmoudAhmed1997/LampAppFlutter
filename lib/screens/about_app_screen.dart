import 'package:expand_widget/expand_widget.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/localization/language_constants.dart';
import 'package:lamp/provider/designers.dart';
import 'package:lamp/provider/designer.dart';
import 'package:lamp/constants.dart' as cons;
import 'package:lamp/provider/pages_api/about_page_api.dart';
import 'package:lamp/provider/home_api/search_api.dart';
import 'package:provider/provider.dart';


class AboutAppScreen extends StatefulWidget {
  static const routeName = '/about_app';

  @override
  _AboutAppScreenState createState() => _AboutAppScreenState();
}

class _AboutAppScreenState extends State<AboutAppScreen> {
  AboutPageApi about = AboutPageApi();
  SearchApi searchApi = SearchApi();
  Future<AboutPageApi> futureAbout;
  Future<SearchApi> futureSearch;





  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureAbout = about.fetchAbout();
    // aboutPage.fetchAndSetAboutPage();
    // print(aboutPage.aboutPageList);

  }

  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);

    return Scaffold(
            appBar: AppBar(
                automaticallyImplyLeading: false,
                centerTitle: true,
                backgroundColor: Color(0xff00B5F0),
                title: Text(myLocale.languageCode=="ar"?"عن التطبيق":"About",style: TextStyle(fontWeight: FontWeight.normal),),


                    // By default, show a loading spinner.



                leading:
                myLocale.languageCode == "ar"?Padding(
                  padding: const EdgeInsets.only(right:16.0),
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
            body: FutureBuilder<AboutPageApi>(
              future: Provider.of<AboutPageApi>(context).fetchAbout(),
              builder: (context,snapshot){
                if(snapshot.hasData){
                  return ListView(
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
                            Text(getTranslated(context, "best_online"),
                                style: TextStyle(
                                  color: Color(0xff18304B),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                )),
                            Text(
                             myLocale.languageCode=="ar"? snapshot.data.page.translations[0].body:snapshot.data.page.translations[1].body,
                              style: TextStyle(fontSize: 15, color: Color(0xff18304B)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 165,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0, right: 18),
                              child: Text(
                                getTranslated(context, "whatsApp"),
                                style: TextStyle(fontSize: 15, color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
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
                                      getTranslated(context, "talk_us_now"),
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
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                border: Border.all(color: Color(0xffECEBE7)),
                              ),

                              child: Padding(
                                padding: const EdgeInsets.only(left:8.0,right: 8.0),
                                child: Center(
                                  child: Text(
                                    getTranslated(context, "common_questions"),
                                    style: TextStyle(
                                        color: Color(0xff18304B),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,

                                  ),
                                ),
                              ),
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
                          getTranslated(context, "dont_find_answer"),
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
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white,
                                border: Border.all(color: Color(0xffF4F4F4))),
                            child: ExpandablePanel(
                              header: Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, left: 15, right: 15, bottom: 15),
                                child: Text(
                                  getTranslated(context, "first_question"),
                                  maxLines: 2,
                                  style: TextStyle(fontSize: 16, color: Color(0xff18304B)),

                                ),
                              ),
                              expanded: Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Text(
                                      "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف",
                                      style:
                                      TextStyle(fontSize: 14, color: Color(0xff18304B)),
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
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white,
                                border: Border.all(color: Color(0xffF4F4F4))),
                            child: ExpandablePanel(
                              header: Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, left: 15, right: 15, bottom: 15),
                                child: Text(
                                  getTranslated(context, "first_question"),
                                  maxLines: 3,
                                  style: TextStyle(fontSize: 16, color: Color(0xff18304B)),
                                ),
                              ),
                              expanded: Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Text(
                                      "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف",
                                      style:
                                      TextStyle(fontSize: 14, color: Color(0xff18304B)),
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
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white,
                                border: Border.all(color: Color(0xffF4F4F4))),
                            child: ExpandablePanel(

                              header: Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, left: 15, right: 15, bottom: 15),
                                child: Text(
                                  getTranslated(context, "first_question"),
                                  maxLines: 3,
                                  style: TextStyle(fontSize: 16, color: Color(0xff18304B)),
                                ),
                              ),
                              expanded: Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Text(
                                      "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف",
                                      style:
                                      TextStyle(fontSize: 14, color: Color(0xff18304B)),
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
                  );
                }else if (snapshot.hasError) {
        return Text("${snapshot.error}");
        }

        // By default, show a loading spinner.
        return Center(child: CircularProgressIndicator());
              },

            ));}}


