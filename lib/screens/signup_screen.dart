import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'login_screen.dart';
import 'package:lamp/widgets/bottomAppBarItems.dart';
import 'agreements_screen.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = '/signup_screen';

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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

    void navigateToLogInScreen() {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginScreen()));
    }
    void navigateToAgreements() {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AgreementsScreen()));
    }
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
                              hintText: "الاسم كاملا",
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
                            height: 10,
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
                               hintText: "كلمة المرور",
                             // labelText: "كلمة المرور",
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
                            height: 10,
                          ),
                          TextFormField(
                            enableInteractiveSelection: false,
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
                              hintText: "رقم الهاتف",
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
                              _userEmail = value;
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            enableInteractiveSelection: false,
                            key: ValueKey("البريد الالكتروني"),
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
                              hintText: "البريد الالكتروني",
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
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                                child: Center(
                                  child: InkWell(
                                    onTap: navigateToLogInScreen,
                                    child: RichText(
                                      text: TextSpan(
                                          text: 'تمتلك حساب بالفعل؟',
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 14),
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: 'تسجيل الدخول',
                                              style: TextStyle(
                                                  color: Color(0xff00B5F0),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ]),
                                    ),
                                  ),
                                )),
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

        Container(
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.only(bottom: 33.0),
          child: InkWell(
            onTap: navigateToAgreements,
            child: RichText(
              text: TextSpan(
                  text: 'بالتسجيل فأنت موافق على ',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'الشروط و الأحكام',
                      style: TextStyle(
                          color: Color(0xff00B5F0),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),

                    )  ,
                  ]),
            ),
          ),
        ),
        Container(
          alignment: Alignment.topRight,
          padding: EdgeInsets.only(top: 35.0, right: 13),
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
