import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lamp/localization/language_constants.dart';
import 'package:lamp/widgets/bottomAppBarItems.dart';

class NewPasswordScreen extends StatefulWidget {
  static const routeName = '/new_password_screen';

  @override
  _NewPasswordScreenState createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  final _formKey = GlobalKey<FormState>();

  var _isLogin = true;
  var _userEmail = '';
  var _userName = '';
  var _userPassword = '';
  var _userPhone = '';

  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Color(0xff00B5F0),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              getTranslated(context, "change_pass")
              ,style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),),
          ],
        ),
        leading:
        Padding(
          padding: const EdgeInsets.only(right:16.0),
          child: Container(
            height: 38,
            width: 38,
            child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: myLocale.languageCode == "ar"
                    ? SvgPicture.asset("assets/icons/button_right.svg")
                    : SvgPicture.asset("assets/icons/button_left.svg")),
          ),
        )
      ),


      backgroundColor: Color(0xffFFFFFF),
      resizeToAvoidBottomPadding: false,
      body:
      Stack(

        overflow: Overflow.visible, children: [

        Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

               SizedBox(
                    height: 14,
                  ),

                  Center(
                      child: Text(
                        "أدخل كلمة المرور الحالية ومن ثم الجديدة ",
                        style: TextStyle(
                            color: Color(0xff2B2727),
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      )),
                  SizedBox(
                    height: 22.5,
                  ),
                  Container(
                    height: 330,
                    width: 327,
                    child: Form(
                      key: _formKey,
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextFormField(
                            textAlign: TextAlign.center,
                            key: ValueKey("كلمة المرور الحالية"),
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
                              suffixIcon: UnconstrainedBox(child: ImageIcon(AssetImage("assets/icons/eye_hide.png"),size: 25,)),
                              filled: true,
                              fillColor: Color(0xffFAFAFA),
                              hintText: "كلمة المرور الحالية",
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
                            onSaved: (value) {
                              _userName = value;
                            },
                          ),

                          SizedBox(
                            height: 13,
                          ),
                          TextFormField(
                            textAlign: TextAlign.center,
                            key: ValueKey("كلمة المرور الجديدة"),
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
                             suffixIcon: UnconstrainedBox(child: ImageIcon(AssetImage("assets/icons/eye_hide.png"),size: 25,)),
                              filled: true,
                              fillColor: Color(0xffFAFAFA),
                              hintText: "كلمة المرور الجديدة",
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
                            onSaved: (value) {
                              _userName = value;
                            },
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          TextFormField(
                            textAlign: TextAlign.center,
                            key: ValueKey("تأكيد كلمة المرور"),
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
                              suffixIcon: UnconstrainedBox(child: ImageIcon(AssetImage("assets/icons/eye_hide.png"),size: 25,)),
                              filled: true,
                              fillColor: Color(0xffFAFAFA),
                              hintText: "تأكيد كلمة المرور",
                              isDense: false,
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
                            onSaved: (value) {
                              _userName = value;
                            },
                          ),


                          SizedBox(
                            height: 21.0,
                          ),
                          Container(
                            width: 327,
                            height: 56,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0)),
                              color: Color(0xff00B5F0),
                              child: Text(
                                getTranslated(context, "save")
                                ,
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
          ),
        ),

      ]),
    );
  }
}
