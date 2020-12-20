import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgetPasswordCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      resizeToAvoidBottomPadding: false,
      body: Stack(children: [
        Directionality(
          textDirection: TextDirection.rtl,
          child: Center(
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),

              width: 327,
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: SvgPicture.asset("assets/images/indicator.svg"),
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    Text(
                      "نسيت كلمة المرور؟",
                      style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Text("لا تقلق،أدخل البريد الالكتروني لارسال كود التعيين",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal)),
                    SizedBox(
                      height: 42,
                    ),
                    TextFormField(
                      enableInteractiveSelection: false,
                      style: TextStyle(color: Colors.grey),
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
                        labelText: "البريد الالكتروني",
                        labelStyle:
                            TextStyle(color: Color(0xffA4B0BE), fontSize: 15),
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
                          "التالي",
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
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 16),
          child: Container(
            alignment: Alignment.topLeft,
            child: SvgPicture.asset("assets/icons/button_cancle.svg"),
          ),
        )
      ]),
    );
  }
}
