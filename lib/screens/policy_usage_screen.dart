import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/localization/language_constants.dart';
import 'package:lamp/widgets/order_card.dart';
import 'package:lamp/provider/pages_api/policy_page_api.dart';

class PolicyScreen extends StatefulWidget {
  static const routeName = '/agreements_screen';

  @override
  _PolicyScreenState createState() => _PolicyScreenState();
}

class _PolicyScreenState extends State<PolicyScreen> {
  Future<PolicyPageApi> futurePolicy;
  PolicyPageApi policy = PolicyPageApi();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futurePolicy = policy.fetchPolicy();

  }
  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);


          return  Scaffold(
              appBar: AppBar(
                  automaticallyImplyLeading: false,
                  centerTitle: true,
                  backgroundColor: Color(0xff00B5F0),
                  title: Text(

                    getTranslated(context, "policy"),
                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
                  ),
                  leading: myLocale.languageCode == "ar"
                      ? Padding(
                    padding: EdgeInsets.only(right: 16),
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
                  )
                      : Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Container(
                      height: 38,
                      width: 38,
                      child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: SvgPicture.asset(
                              "assets/icons/button_left.svg")),
                    ),
                  )),
              body: FutureBuilder<PolicyPageApi>(
                future: futurePolicy,
                builder: (context,snapshot){
                  if(snapshot.hasData){
                    return  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        myLocale.languageCode=="ar"? snapshot.data.page.translations[0].body:snapshot.data.page.translations[1].body,
                        style: TextStyle(fontSize: 15, color: Color(0xff18304B)),
                      ),
                    );
                  }else if (snapshot.hasError) {
                    return Text("${snapshot.error}");
                  }

// By default, show a loading spinner.
                  return Center(child: CircularProgressIndicator());

                },

              ));
        }


}
