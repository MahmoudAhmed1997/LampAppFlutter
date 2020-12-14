import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lamp/widgets/bottomAppBarItems.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  var _isLogin = true;
  var _userEmail = '';
  var _userName = '';
  var _userPassword = '';
  var _userPhone = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      resizeToAvoidBottomPadding: false,
      body: Stack(fit: StackFit.expand, overflow: Overflow.visible, children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Image(
              image: AssetImage(
            "assets/images/bg.png",
          )),
        ),
        Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Center(
                      child: Text(
                    "مستخدم جديد",
                    style: TextStyle(color: Color(0xff00B5F0), fontSize: 17),
                  )),
                  SizedBox(
                    height: 16.5,
                  ),
                  Center(
                      child: Text(
                    "أنشئ حسابك في متجر لامب!",
                    style: TextStyle(
                        color: Color(0xff18304B),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
                  SizedBox(
                    height: 41.5,
                  ),
                  Container(
                    height: 432,
                    width: 327,
                    child: Form(
                      key: _formKey,
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextFormField(
                            enableInteractiveSelection: false,
                            style: TextStyle(color: Colors.grey),
                            key: ValueKey("الاسم كاملا"),
                            autocorrect: false,
                            textCapitalization: TextCapitalization.none,
                            enableSuggestions: false,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'من فضلك أدخل اسم صالح';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              alignLabelWithHint: true,
                              filled: true,
                              fillColor: Color(0xffFAFAFA),
                              labelText: "الاسم كاملا",
                              labelStyle: TextStyle(
                                  color: Color(0xffA4B0BE), fontSize: 15),
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
                            height: 15,
                          ),
                          TextFormField(
                            key: ValueKey("كلمة المرور"),
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
                              fillColor: Color(0xffFAFAFA),
                              labelText: "كلمة المرور",
                              labelStyle: TextStyle(
                                  color: Color(0xffA4B0BE), fontSize: 15),
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
                            height: 15,
                          ),
                          TextFormField(
                            enableInteractiveSelection: false,
                            style: TextStyle(color: Colors.grey),
                            key: ValueKey("رقم الهاتف"),
                            autocorrect: false,
                            textCapitalization: TextCapitalization.none,
                            enableSuggestions: false,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'من فضلك أدخل رقم صحيح صالح';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              alignLabelWithHint: true,
                              filled: true,
                              fillColor: Color(0xffFAFAFA),
                              labelText: "رقم الهاتف",
                              labelStyle: TextStyle(
                                  color: Color(0xffA4B0BE), fontSize: 15),
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
                              _userEmail = value;
                            },
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            enableInteractiveSelection: false,
                            style: TextStyle(color: Colors.grey),
                            key: ValueKey("رقم الجوال/البريد الالكتروني"),
                            autocorrect: false,
                            textCapitalization: TextCapitalization.none,
                            enableSuggestions: false,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'من فضلك أدخل ايميل صالح';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              alignLabelWithHint: true,
                              filled: true,
                              fillColor: Color(0xffFAFAFA),
                              labelText: "رقم الجوال / البريد الالكتروني",
                              labelStyle: TextStyle(
                                  color: Color(0xffA4B0BE), fontSize: 15),
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
                              _userEmail = value;
                            },
                          ),
                          SizedBox(
                            height: 23.0,
                          ),
                          Container(
                            width: 327,
                            height: 56,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0)),
                              color: Color(0xff00B5F0),
                              child: Text(
                                "انشاء حساب",
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {
                                null;
                              },
                            ),
                          ),
                          Container(
                              child: Center(
                            child: RichText(
                              text: TextSpan(
                                  text: 'تمتلك حساب بالفعل؟',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'تسجيل الدخول',
                                      style: TextStyle(
                                          color: Color(0xff1775BB),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ]),
                            ),
                          )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.only(bottom: 33.0),
          child: RichText(
            text: TextSpan(
                text: 'بالتسجيل فأنت موافق على ',
                style:
                TextStyle(color: Colors.black, fontSize: 14),
                children: <TextSpan>[
                  TextSpan(
                    text: 'الشروط والأحكام',
                    style: TextStyle(
                        color: Color(0xff1775BB),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  )
                ]),
          ),
        ),
        Container(
          alignment: Alignment.topRight,
          padding: EdgeInsets.only(top: 35.0,right: 13),
          child: SvgPicture.asset("assets/images/right_button.svg"),
        ),

      ]),
    );
  }
}
