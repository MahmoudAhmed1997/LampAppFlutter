import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContactUsScreen extends StatefulWidget {
  @override
  _ContactUsScreenState createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  final _formKey = GlobalKey<FormState>();

  var _isLogin = true;
  var _userEmail = '';
  var _userName = '';
  var _userPassword = '';
  var _userPhone = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff00B5F0),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('تواصل معنا'),
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
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:25,right:20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    "معلومات التوصيل",
                    style: TextStyle(
                        color: Color(0xff18304B),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "نسعد بتواصلكم معنا في أي وقت",
                    style: TextStyle(
                      color: Color(0xff18304B),
                      fontSize: 14,
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 22,right: 18,left: 18,bottom: 27),
              child: Column(
                children: [

                  Row(
                    children: [
                      SvgPicture.asset("assets/icons/icon_email.svg"),
                      SizedBox(width: 18,),

                      Text(
                        "support@name.com",
                        style: TextStyle(fontSize: 17, color: Color(0xff18304B)),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              SvgPicture.asset("assets/icons/icon_phone.svg"),
                              SizedBox(width: 18,),

                              Column(
                                children: [
                                  Text(
                                    "888888888",
                                    style: TextStyle(fontSize: 17, color: Color(0xff18304B)),
                                  ),
                                  Text(
                                    "888888888",
                                    style: TextStyle(fontSize: 17, color: Color(0xff18304B)),
                                  ),

                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset("assets/icons/icon_map.svg"),
                              SizedBox(width: 18,),
                              Text(
                                "لرياض, المنطقة الصناعية\n شارع الأمير خالد بن عبدالعزيز",
                                style: TextStyle(fontSize: 15, color: Color(0xff18304B)),
                              )
                            ],
                          ),



                        ],
                      ),
                      Container(
                          width: 122,height: 115,
                          child: Image(image: AssetImage("assets/images/location.png"),)),
                    ],
                  )
                ],
              ),
            ),
            Divider(),
            Center(child: Text("بامكانك ارسـال رسالة مباشرة للدعم الفني",style: TextStyle(fontSize: 17,color: Color(0xff18304B)),))
            ,Padding(
              padding: const EdgeInsets.only(top:20.0),
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
                              hintText: "الاسم كـــاملاً",
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
                            },
                          ),

                          SizedBox(
                            height: 13,
                          ),
                          TextFormField(
                            textAlign: TextAlign.center,
                            key: ValueKey("رقم الهاتف"),
                            autocorrect: true,

                            textCapitalization: TextCapitalization.none,
                            enableSuggestions: false,
                            validator: (value) {
                              if (value.isEmpty || value.length < 4) {
                                return 'أدخل على الأقل 7 أرقام';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffF9F9FF),
                              hintText: "رقم الهاتف",
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
                            },
                          ),

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
                              filled: true,
                              fillColor: Color(0xffF9F9FF),
                              hintText: "طبيعة الرسالة",
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
                            },
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
                              hintText: "اكتب النص هناً",
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
                                "ارسال الرسالة",
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
            SizedBox(height: 15.0,)

          ],
        ),
      ),
    );
  }
}
