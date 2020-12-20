import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SettingsScreen extends StatefulWidget {
  static const routeName = '/setting_screen';

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFDFDFF),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff00B5F0),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('الاعدادات العامة'),
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
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(

                width: 349,
                height: 63,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Color(0xffFFFFFF)),
                child: RaisedButton(
                  elevation: 0.0,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("تغيير كلمة المرور",style: TextStyle(color: Color(0xff18304B),fontSize: 16),),
                      SvgPicture.asset("assets/icons/arrow_right.svg")
                    ],),
                  onPressed: (){},
                ),
              ),
              SizedBox(height: 10.0,),
              Container(

                width: 349,
                height: 63,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Color(0xffFFFFFF)),
                child: RaisedButton(
                  elevation: 0.0,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("تفعيل استقبال الاشعارات",style: TextStyle(color: Color(0xff18304B),fontSize: 16),),
                      SvgPicture.asset("assets/icons/arrow_right.svg")
                    ],),
                  onPressed: (){},
                ),
              ),
              SizedBox(height: 10.0,),

              Container(

                width: 349,
                height: 63,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Color(0xffFFFFFF)),
                child: RaisedButton(
                  elevation: 0.0,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("سياسة الاستخدام",style: TextStyle(color: Color(0xff18304B),fontSize: 16),),
                      SvgPicture.asset("assets/icons/arrow_right.svg")
                    ],),
                  onPressed: (){},
                ),
              ),
              SizedBox(height: 10.0,),
              Container(

                width: 349,
                height: 63,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Color(0xffFFFFFF)),
                child: RaisedButton(
                  elevation: 0.0,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("تواصل معنا",style: TextStyle(color: Color(0xff18304B),fontSize: 16),),
                      SvgPicture.asset("assets/icons/arrow_right.svg")
                    ],),
                  onPressed: (){},
                ),
              ),
              SizedBox(height: 10.0,),
              Container(

                width: 349,
                height: 63,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Color(0xffFFFFFF)),
                child: RaisedButton(
                  elevation: 0.0,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("الشروط و الأحكام",style: TextStyle(color: Color(0xff18304B),fontSize: 16),),
                      SvgPicture.asset("assets/icons/arrow_right.svg")
                    ],),
                  onPressed: (){},
                ),
              ),
              SizedBox(height: 10.0,),
              Container(

                width: 349,
                height: 63,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Color(0xffFFFFFF)),
                child: RaisedButton(
                  elevation: 0.0,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("عن التطبيق",style: TextStyle(color: Color(0xff18304B),fontSize: 16),),
                      SvgPicture.asset("assets/icons/arrow_right.svg")
                    ],),
                  onPressed: (){},
                ),
              ),
              SizedBox(height: 10.0,),
              Container(

                width: 349,
                height: 63,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Color(0xffFFFFFF)),
                child: RaisedButton(
                  elevation: 0.0,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("البحث عن التحديات",style: TextStyle(color: Color(0xff18304B),fontSize: 16),),
                      SvgPicture.asset("assets/icons/arrow_right.svg")
                    ],),
                  onPressed: (){},
                ),
              ),
              SizedBox(height: 10.0,),

            ],
          ),
        ),
      ),
    );
  }
}
