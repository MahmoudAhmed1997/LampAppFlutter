import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lamp/screens/signup_screen.dart';
import 'package:lamp/widgets/auth_form.dart';
import 'package:lamp/widgets/bottomAppBarItems.dart';
import 'package:lamp/widgets/forget_password.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
      body: Stack(children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Image(image: AssetImage("assets/images/bg.png"),),
        ),
        Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 40,),
              Center(
                  child: Text(
                "تسجيل الدخول",
                style: TextStyle(color: Color(0xff00B5F0), fontSize: 17),
              )),
              SizedBox(
                height: 16.5,
              ),
              Center(
                  child: Text(
                "هلا فيك في متجر لامب!",
                style: TextStyle(
                    color: Color(0xff18304B),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
              SizedBox(
                height: 41.5,
              ),
              Container(
                height: 326,
                width: 327,
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                        height: 12.0,
                      ),
                      Container(
                        width: 327,
                        height: 56,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)),
                          color: Color(0xff00B5F0),
                          child: Text(
                            "تسجيل الدخول",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            null;
                          },
                        ),
                      ),
                      FlatButton(
                        child: Text(
                          "نسيت كلمة المرور؟",
                          style:
                              TextStyle(color: Color(0xff282F39), fontSize: 15),
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                              isScrollControlled: true,
                              isDismissible: true,
                              context: context,
                              builder: (context) =>
                                  FractionallySizedBox(
                                    heightFactor: 0.88,
                                    child: ForgetPasswordCard(),
                                  ));
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                        },
                      ),
                      Container(
                          child: Center(
                        child: RichText(
                          text: TextSpan(
                              text: 'هل أنت مستخدم جديد في ضرار؟',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 14),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'أنشئ حسابك',
                                  style: TextStyle(
                                      color: Color(0xff1775BB),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                )
                              ]),
                        ),
                      ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
