import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lamp/classes/login_model.dart';

import 'package:lamp/screens/signup_screen.dart';
import 'package:lamp/widgets/forget_password.dart';
import 'package:lamp/localization/language_constants.dart';
import 'package:lamp/classes/http_exceptions.dart';
import 'package:lamp/screens/home_screen.dart';
import 'package:lamp/provider/user_api/auth_api/login_api.dart';
import 'package:lamp/classes/api_client.dart';
import 'package:lamp/classes/s_helpar.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  // LoginApi api =LoginApi();

  bool _obscureText = true;

  String email;
  String password;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }



  bool validateAndSave() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('An Error Occurred!'),
        content: Text(message),
        actions: <Widget>[
          FlatButton(
            child: Text('Okay'),
            onPressed: () {
              Navigator.of(ctx).pop();
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);

    void navigate() {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => SignUpScreen()));
    }

    Future<void> _submit() async {
      if (!_formKey.currentState.validate()&&isLogin == false) {
        // Invalid!
        return null;
      }
      _formKey.currentState.save();
      setState(() {
        _isLoading = true;
      });
      try {
        print(email);
        print(password);
        Map map = await loginUser(email, password);
          print("00000");
          //LoginModel loginModel ;
          print("token   11111" + map["token"]);
          await S_Helper.s_helper
              .addNew("token", map["token"]);
          String token =
          await S_Helper.s_helper.getValue("token");
          print(token);

          // await _prefs.setString('token', map['token']);

        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => HomeScreen()));
      } on HttpException catch (error) {
        var errorMessage = 'Authentication failed';
        if (error.toString().contains('EMAIL_EXISTS')) {
          errorMessage = 'This email address is already in use.';
        } else if (error.toString().contains('INVALID_EMAIL')) {
          errorMessage = 'This is not a valid email address';
        } else if (error.toString().contains('WEAK_PASSWORD')) {
          errorMessage = 'This password is too weak.';
        } else if (error.toString().contains('EMAIL_NOT_FOUND')) {
          errorMessage = 'Could not find a user with that email.';
        } else if (error.toString().contains('INVALID_PASSWORD')) {
          errorMessage = 'Invalid password.';
        }
        _showErrorDialog(errorMessage);
      } catch (error) {
        const errorMessage =
            'Could not authenticate you. Please try again later.';
        _showErrorDialog(errorMessage);
      }

      setState(() {
        _isLoading = false;
      });
    }

    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      //resizeToAvoidBottomPadding: false,
      body: Stack(children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Image(
            image: AssetImage("assets/images/bg.png"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: ListView(
            //   mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Center(
                  child: Text(
                getTranslated(context, "log_in"),
                style: TextStyle(color: Color(0xff00B5F0), fontSize: 17),
              )),
              SizedBox(
                height: 16.5,
              ),
              Center(
                  child: Text(
                getTranslated(context, "welcome_text"),
                style: TextStyle(
                  color: Color(0xff18304B),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  //  fontFamily: "assets/fonts/DINNextLTArabic-Bold"
                ),
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
                        key: ValueKey("رقم الجوال/البريد الالكتروني"),
                        autocorrect: true,
                        textCapitalization: TextCapitalization.none,
                        enableSuggestions: false,
                        validator: (value) {
                          if (value.isEmpty) {
                            return myLocale.languageCode=="ar"?'من فضلك أدخل ايميل صالح':'Please enter a valid email';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          alignLabelWithHint: true,
                          filled: true,
                          fillColor: Color(0xffFAFAFA),
                          hintText: getTranslated(context, "phone_or_number"),
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
                        onChanged: (value) {
                          setState(() {
                            email = value;
                            print(email);
                          });
                        },
                        onSaved: (value) {
                          setState(() {
                            email = value;
                            print(email);
                          });
                        },
                      ),
                      TextFormField(
                        key: ValueKey("كلمة المرور"),
                        validator: (value) {
                          if (value.isEmpty || value.length < 4) {
                            return myLocale.languageCode=="ar"?'أدخل على الأقل ٤ حروف':'Enter at least 4 characters';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          alignLabelWithHint: true,
                          filled: true,
                          fillColor: Color(0xffFAFAFA),
                          hintText: getTranslated(context, "password"),

                          // labelText: "كلمة المرور",
                          suffixIcon: InkWell(
                            onTap: () {
                              _toggle();
                            },
                            child: UnconstrainedBox(
                                child: _obscureText
                                    ? ImageIcon(
                                        AssetImage("assets/icons/eye_hide.png"),
                                        size: 23,
                                        color: Colors.grey,
                                      )
                                    : ImageIcon(
                                        AssetImage("assets/icons/eye.png"),
                                        size: 23,
                                        color: Colors.grey,
                                      )),
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
                        onChanged: (value) {
                          setState(() {
                            password = value;
                            print(password);
                          });
                        },
                        onSaved: (value) {
                          password = value;
                          setState(() {});
                        },
                        obscureText: _obscureText,
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Container(
                        width: double.infinity,
                        height: 56,
                        child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)),
                            color: Color(0xff00B5F0),
                            child: Text(
                              getTranslated(context, "log_in"),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            onPressed: () async {
                              await  _submit();


                              //   LoginApi login;
                              // if(login.token!=null){
                              // }

                              //    await _submit();
                              //mhmmhm@gmail.com
                              //      if(validateAndSave( )){
                              //        print(requestModel.toJson());
                              //
                              //      }else{
                            }
                            //  print(_authData.toString());
                            //
                            //  Navigator.of(context).push(MaterialPageRoute(
                            //
                            //      builder: (context) => HomeScreen()));

                            ),
                      ),
                      FlatButton(
                        child: Text(
                          getTranslated(context, "forget_pass"),
                          style: TextStyle(
                              color: Color(0xff282F39),
                              fontSize: 15,
                              fontWeight: FontWeight.normal),
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5.0),
                                    topRight: Radius.circular(5.0)),
                              ),
                              isScrollControlled: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              isDismissible: true,
                              context: context,
                              builder: (context) => FractionallySizedBox(
                                    heightFactor: 0.88,
                                    child: ForgetPasswordCard(),
                                  ));
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  child: Center(
                child: InkWell(
                  onTap: navigate,
                  child: RichText(
                    text: TextSpan(
                        text: getTranslated(context, "are_you_new_user"),
                        style: TextStyle(color: Colors.black, fontSize: 14),
                        children: <TextSpan>[
                          TextSpan(
                            text: getTranslated(context, "create_now_account"),
                            style: TextStyle(
                                color: Color(0xff1775BB),
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )
                        ]),
                  ),
                ),
              )),
            ],
          ),
        ),
      ]),
    );
  }
}
