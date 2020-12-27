import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lamp/widgets/bottomAppBarItems.dart';
import 'login_screen.dart';
import 'package:lamp/localization/language_constants.dart';

class ResetScreen extends StatefulWidget {
  static const routeName = '/reset_screen';

  @override
  _ResetScreenState createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }


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
        Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Center(
                    child: Text(
                      getTranslated(context, "set_password"),
                      style: TextStyle(color: Color(0xff00B5F0), fontSize: 17),
                    )),
                SizedBox(
                  height: 16.5,
                ),
                Center(
                    child: Text(
                      getTranslated(context, "enter_the_sent_code"),
                      style: TextStyle(
                          color: Color(0xff18304B),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  height: 14,
                ),

                Center(
                    child: Text(
                      getTranslated(context, "new_password_twice"),
                      style: TextStyle(
                          color: Color(0xff18304B),
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    )),
                SizedBox(
                  height: 41.5,
                ),
                Container(
                  height: 432,
                  width: 327,
                  child: Form(
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextFormField(
                          enableInteractiveSelection: false,
                          style: TextStyle(color: Colors.grey),
                          key: ValueKey("كود التعيين"),
                          autocorrect: false,
                          textCapitalization: TextCapitalization.none,
                          enableSuggestions: false,
                          validator: (value) {
                            if (value.isEmpty) {
                              return '';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            alignLabelWithHint: true,
                            filled: true,
                            fillColor: Color(0xffFAFAFA),
                            hintText: getTranslated(context, "designation_code"),

                            labelStyle: TextStyle(
                                color: Color(0xff000000), fontSize: 15),
                            hintStyle: TextStyle(
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
                          validator: (value) {
                            if (value.isEmpty || value.length < 4) {
                              return 'أدخل على الأقل ٤ حروف';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            alignLabelWithHint: true,
                            filled: true,
                            fillColor: Color(0xffFAFAFA),
                            hintText: getTranslated(context, "new_password"),
                            suffixIcon: InkWell(
                              onTap: (){_toggle();},
                              child: UnconstrainedBox(
                                  child: _obscureText
                                      ?
                                  ImageIcon(
                                    AssetImage("assets/icons/eye_hide.png"),
                                    size: 23,
                                    color: Colors.grey,
                                  )

                                      :
                                  ImageIcon(
                                    AssetImage("assets/icons/eye.png"),
                                    size: 23,
                                    color: Colors.grey,
                                  )
                              ),
                            ),
                            errorStyle: TextStyle(color: Color(0xffF45540)),

                            hintStyle:
                            TextStyle(color: Color(0xffA4B0BE), fontSize: 15),
                            labelStyle:
                            TextStyle(color: Color(0xff000000), fontSize: 15),
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
                          obscureText: _obscureText,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          key: ValueKey("كلمة المرور"),
                          validator: (value) {
                            if (value.isEmpty || value.length < 4) {
                              return 'أدخل على الأقل ٤ حروف';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            alignLabelWithHint: true,
                            filled: true,
                            fillColor: Color(0xffFAFAFA),
                            hintText: getTranslated(context, "confirm_password"),
                            suffixIcon: InkWell(
                              onTap: (){_toggle();},
                              child: UnconstrainedBox(
                                  child: _obscureText
                                      ?
                                  ImageIcon(
                                    AssetImage("assets/icons/eye_hide.png"),
                                    size: 23,
                                    color: Colors.grey,
                                  )

                                      :
                                  ImageIcon(
                                    AssetImage("assets/icons/eye.png"),
                                    size: 23,
                                    color: Colors.grey,
                                  )
                              ),
                            ),
                            errorStyle: TextStyle(color: Color(0xffF45540)),

                            hintStyle:
                            TextStyle(color: Color(0xffA4B0BE), fontSize: 15),
                            labelStyle:
                            TextStyle(color: Color(0xff000000), fontSize: 15),
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
                          obscureText: _obscureText,
                        ),

                        SizedBox(
                          height: 36.0,
                        ),
                        Container(
                          width: 327,
                          height: 56,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)),
                            color: Color(0xff00B5F0),
                            child: Text(
                              getTranslated(context, "save"),
                              style: TextStyle(color: Colors.white,fontSize: 16),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginScreen()));
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
        Container(
          alignment: Alignment.topRight,
          padding: EdgeInsets.only(top: 35.0,right: 13),
          child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: SvgPicture.asset("assets/images/right_button.svg")),
        ),

      ]),
    );
  }
}
