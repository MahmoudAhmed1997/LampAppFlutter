import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/widgets/dropdown_countries.dart';
import 'package:lamp/localization/language_constants.dart';
import 'package:lamp/provider/pages_api/contact_page_api.dart';

class ContactUsScreen extends StatefulWidget {
  static const routeName = '/contact_us_screen';

  @override
  _ContactUsScreenState createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  final _formKey = GlobalKey<FormState>();
  Future<ContactUsApi> futureContact;
  ContactUsApi contact = ContactUsApi();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureContact =contact.fetchContactUs();
  }
  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);

    return  Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
                automaticallyImplyLeading: false,
                centerTitle: true,
                backgroundColor: Color(0xff00B5F0),
                title: Text(

                  getTranslated(context, "contact_us"),

                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                ),
                leading:
                myLocale.languageCode == "ar" ? Padding(
                  padding: const EdgeInsets.only(right: 16.0),
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
                ) :
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
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
            body: FutureBuilder<ContactUsApi>(
              future: futureContact,
              builder: (context,snapshot){
                if(snapshot.hasData){
                  return  ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25, right: 20, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              getTranslated(context, "delivery_info"),

                              style: TextStyle(
                                  color: Color(0xff18304B),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              getTranslated(context, "happy_contact"),

                              style: TextStyle(
                                color: Color(0xff18304B),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 22, right: 18, left: 18, bottom: 27),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset("assets/icons/icon_email.svg"),
                                SizedBox(
                                  width: 18,
                                ),
                                Text(
                                  snapshot.data.info.email,
                                  style:
                                  TextStyle(fontSize: 17, color: Color(0xff18304B)),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SvgPicture.asset(
                                            "assets/icons/icon_phone.svg"),
                                        SizedBox(
                                          width: 18,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              snapshot.data.info.phone,
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  color: Color(0xff18304B)),
                                            ),

                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SvgPicture.asset("assets/icons/icon_map.svg"),
                                        SizedBox(
                                          width: 18,
                                        ),
                                        Text(
                                          snapshot.data.info.address,
                                          style: TextStyle(
                                              fontSize: 15, color: Color(0xff18304B)),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                    width: 122,
                                    height: 115,
                                    child: Image(
                                      image: AssetImage("assets/images/location.png"),
                                    )),
                              ],
                            )
                          ],
                        ),
                      ),
                      Divider(),
                      Center(
                          child: Text(
                            getTranslated(context, "send_direct_message"),
                            style: TextStyle(fontSize: 17, color: Color(0xff18304B)),
                            textAlign: TextAlign.center,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Column(
                          children: [
                            Container(
                              width: 323,
                              child: Form(
                                key: _formKey,
                                child: Column(
                                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextFormField(
                                      textAlign: TextAlign.center,
                                      key: ValueKey("الاسم كاملا"),
                                      autocorrect: true,
                                      textCapitalization: TextCapitalization.words,
                                      enableSuggestions: false,
                                      validator: (value) {
                                        if (value.isEmpty || value.length < 4) {
                                          return 'أدخل على الأقل ٤ حروف';
                                        }
                                        return null;
                                      },
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Color(0xffF9F9FF),
                                        hintText: getTranslated(context, "full_name"),

                                        hintStyle: TextStyle(
                                            color: Color(0xff7F8FA6), fontSize: 15),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(12.0),
                                            borderSide: BorderSide.none),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          new BorderSide(color: Color(0xff18304B)),
                                          borderRadius: new BorderRadius.circular(12),
                                        ),
                                      ),
                                      onSaved: (value) {},
                                    ),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12.0),
                                          color: Color(0xffF9F9FF),
                                          // border: Border.all(color: Color(0xff18304B))
                                        ),
                                        height: 65,
                                        child: DropdownCountries()),

                                    SizedBox(
                                      height: 13,
                                    ),
                                    TextFormField(
                                      textAlign: TextAlign.center,
                                      key: ValueKey("طبيعة الرسالة"),
                                      autocorrect: true,
                                      textCapitalization: TextCapitalization.words,
                                      enableSuggestions: false,
                                      validator: (value) {
                                        if (value.isEmpty || value.length < 4) {
                                          return 'أدخل على الأقل 15 حرف';
                                        }
                                        return null;
                                      },
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                        suffixIcon: Icon(
                                          Icons.keyboard_arrow_down,
                                          color: Color(0xff0C244A),
                                          size: 26,
                                        ),
                                        filled: true,
                                        fillColor: Color(0xffF9F9FF),
                                        hintText: getTranslated(
                                            context, "nature_of_message"),

                                        hintStyle: TextStyle(
                                            color: Color(0xff7F8FA6), fontSize: 15),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(12.0),
                                            borderSide: BorderSide.none),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          new BorderSide(color: Color(0xff18304B)),
                                          borderRadius: new BorderRadius.circular(12),
                                        ),
                                      ),
                                      onSaved: (value) {},
                                    ),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    TextFormField(
                                      textAlign: TextAlign.center,
                                      maxLines: 8,
                                      minLines: 5,
                                      key: ValueKey("النص"),
                                      autocorrect: true,
                                      textCapitalization: TextCapitalization.words,
                                      enableSuggestions: false,
                                      validator: (value) {
                                        if (value.isEmpty || value.length < 15) {
                                          return 'أدخل على الأقل 15 حرف';
                                        }
                                        return null;
                                      },
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Color(0xffF9F9FF),
                                        hintText: getTranslated(
                                            context, "write_text"),
                                        hintStyle: TextStyle(
                                            color: Color(0xff7F8FA6), fontSize: 15),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(12.0),
                                            borderSide: BorderSide.none),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          new BorderSide(color: Color(0xff18304B)),
                                          borderRadius: new BorderRadius.circular(12),
                                        ),
                                      ),
                                      onSaved: (value) {},
                                    ),
                                    SizedBox(
                                      height: 21.0,
                                    ),
                                    Container(
                                      width: 327,
                                      height: 56,
                                      child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                12.0)),
                                        color: Color(0xff00B5F0),
                                        child: Text(
                                          getTranslated(context, "send_message"),
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        onPressed: () {
                                          null;
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      )
                    ],
                  );
                }else if(snapshot.hasError){
                  return Text("${snapshot.error}");
                }

                // By default, show a loading spinner.
                return Center(child: CircularProgressIndicator());
              },

            ),
          );
        }




  }

