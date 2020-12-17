import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lamp/widgets/bottomAppBarItems.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();

  var _isLogin = true;
  var _userEmail = '';
  var _userName = '';
  var _userPassword = '';
  var _userPhone = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff00B5F0),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('تعديل البروفايل'),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Container(
                height: 38,
                width: 38,
                child: SvgPicture.asset("assets/icons/button_right.svg")),
          )
        ],
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

                  SizedBox(
                    height: 22.5,
                  ),
                  Center(
                    child: Container(
                      height: 400,
                      width: 327,
                      child: Form(
                        key: _formKey,
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextFormField(
                              textAlign: TextAlign.right,
                              
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
                                fillColor: Color(0xffFAFAFA),
                                hintText: "الاسم كاملاً",

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
                              key: ValueKey("البريد الالكتروني"),
                              autocorrect: true,

                              textCapitalization: TextCapitalization.words,
                              enableSuggestions: false,
                              validator: (value) {
                                if (value.isEmpty || value.length < 4) {
                                  return 'أدخل على الأقل ٤ حروف';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xffFAFAFA),
                                hintText: "البريد الالكتروني",
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
                              key: ValueKey("المدينة"),
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
                                hintText: "المدينة",
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
                              height: 13,
                            ),
                            TextFormField(
                              key: ValueKey("phone"),
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
                                hintText: "5000 000000",
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
                                  "حفظ",
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
