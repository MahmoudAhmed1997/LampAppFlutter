import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lamp/classes/http_exceptions.dart';
import 'package:lamp/provider/auth.dart';
import 'package:lamp/provider/user_api/auth_api/login_api.dart';

import 'package:provider/provider.dart';
import 'login_screen.dart';
import 'package:lamp/widgets/bottomAppBarItems.dart';
import 'agreements_screen.dart';
import 'package:lamp/localization/language_constants.dart';
import 'package:lamp/provider/user_api/auth_api/login_api.dart';
import 'package:lamp/classes/s_helpar.dart';


class SignUpScreen extends StatefulWidget {
  static const routeName = '/signup_screen';

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  bool _isLoading = false;
  String name;
  String email;
  String password;
  String phone;
  //APIService api = APIService();
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
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
  void initState() {
    // TODO: implement initState
    super.initState();
     // api.signup("name", "email@gmail.com", "12345678", "966561234551");
    // requestModel = new SignupRequestModel();
    // api.login(requestModel);

  }
  bool validateAndSave(){
    final form= _formKey.currentState;
    if(form.validate()){
      form.save();
      return true;
    }
    return false;
  }
  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);
    Future<void> _submit() async {
      if (!_formKey.currentState.validate()) {
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
        await signupUser(name,password,phone,email);
        print("00000");
        //LoginModel loginModel ;
        // print("token   11111" + map["token"]);
        // await S_Helper.s_helper
        //     .addNew("token", map["token"]);
        // String token =
        // await S_Helper.s_helper.getValue("token");
        // print(token);
        //
        // // await _prefs.setString('token', map['token']);

        await Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => LoginScreen()));
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


    void navigateToLogInScreen() {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginScreen()));
    }
    void navigateToAgreements() {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AgreementsScreen()));
    }
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
     // resizeToAvoidBottomPadding: false,
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
            padding: const EdgeInsets.only(top: 40.0,left:20,right: 20 ),
            child:ListView(
           //   mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                    child: Text(
            getTranslated(context, "new_user"),

                  style: TextStyle(color: Color(0xff00B5F0), fontSize: 17),
                )),
                SizedBox(
                  height: 16.5,
                ),
                Center(
                    child: Text(
                      getTranslated(context, "create_account_lamp"),
                  style: TextStyle(
                      color: Color(0xff18304B),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
                SizedBox(
                  height: 41.5,
                ),
                Container(
                //  height: 432,
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
                            hintText:  getTranslated(context, "full_name"),

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
                          ), onChanged: (value) {
                          setState(() {
                            name = value;
                            print(name);
                          });
                        },
                          onSaved: (value) {
                            setState(() {
                              name = value;
                              print(name);
                            });
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
                             hintText: getTranslated(context, "password"),

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
                          onChanged: (value) {
                            setState(() {
                              password = value;
                              print(password);
                            });
                          },
                          onSaved: (value) {
                            setState(() {
                              password = value;
                              print(password);
                            });
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
                            hintText:  getTranslated(context, "phone_number"),

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
                          onChanged: (value) {
                            setState(() {
                              phone = value;
                              print(phone);
                            });
                          },
                          onSaved: (value) {
                            setState(() {
                              phone = value;
                              print(phone);
                            });
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
                            hintText: getTranslated(context, "email"),

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
                        SizedBox(
                          height: 23.0,
                        ),
                        Container(
                          height: 56,
                          width: double.infinity,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)),
                            color: Color(0xff00B5F0),
                            child: Text(
                              getTranslated(context, "create_account"),
                              style: TextStyle(color: Colors.white,fontSize: 16),
                            ),
                            onPressed: () async{
                             await _submit();
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
                                        text:getTranslated(context, "already_have_account"),

                                        style: TextStyle(
                                            color: Colors.black, fontSize: 14),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: getTranslated(context, "log_in"),

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
                        SizedBox(height: 110,),
                        Container(
                          alignment: Alignment.bottomCenter,
                          padding: EdgeInsets.only(bottom: 33.0),
                          child: InkWell(
                            onTap: navigateToAgreements,
                            child: RichText(
                              text: TextSpan(
                                  text:getTranslated(context, "log_in_agreement"),

                                  style: TextStyle(color: Colors.black, fontSize: 14),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: getTranslated(context, "agreements"),

                                      style: TextStyle(
                                          color: Color(0xff00B5F0),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),

                                    )  ,
                                  ]),
                            ),
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

        myLocale.languageCode=="ar"?
        Container(
          alignment: Alignment.topRight,
          padding: EdgeInsets.only(top: 35.0, right: 12),
          child:   InkWell(
              onTap: (){
                Navigator.pop(context);
              },
             child: SvgPicture.asset(
                "assets/images/right_button.svg",
              )
          ),
        ):
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(top: 35.0, left: 12),
          child:   InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child:SvgPicture.asset(
                "assets/images/btn_left.svg",
              )
          ),
        ),
      ]),
    );
  }
}
