import 'package:flutter/material.dart';

class GetCheckValue extends StatefulWidget {
  @override
  GetCheckValueState createState() {
    return new GetCheckValueState();
  }
}

class GetCheckValueState extends State<GetCheckValue> {
  bool _isChecked = true;
  String _currText = '';

  List<String> text = ["InduceSmile.com", "Flutter.io", "google.com"];

  @override
  Widget build(BuildContext context) {
    return    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(child: Text("عرض حسب",style: TextStyle(fontSize: 15,color: Color(0xff18304B)),)),
        Container(
          child: CheckboxListTile(
            activeColor:Color(0xff00B5F0),
            contentPadding: EdgeInsets.all(0.5),
            title: const Text('الأكثر طلباً',style: TextStyle(fontSize: 15,color: Color(0xff18304B)),),
            value: _isChecked,
            onChanged: (bool value) {
              setState(() {
                _isChecked = value;
              });
            },
          ),
        ),
        Container(
          child: CheckboxListTile(
            activeColor:Color(0xff00B5F0),
            contentPadding: EdgeInsets.all(0.5),
            title: const Text('الأحدثً',style: TextStyle(fontSize: 15,color: Color(0xff18304B)),),
            value: _isChecked,
            onChanged: (bool value) {
              setState(() {
                _isChecked = value;
              });
            },
          ),
        ),
        Container(
          child: CheckboxListTile(

            activeColor:Color(0xff00B5F0),
            contentPadding: EdgeInsets.all(0.5),
            title: const Text('الأقل سعرا',style: TextStyle(fontSize: 15,color: Color(0xff18304B)),),
            value: _isChecked,
            onChanged: (bool value) {
              setState(() {
                _isChecked = value;
              });
            },
          ),
        ),
        Container(
          child: CheckboxListTile(
            activeColor:Color(0xff00B5F0),
            contentPadding: EdgeInsets.all(0.5),
            title: const Text('ترتيب أبجدي (أ - ي)',style: TextStyle(fontSize: 15,color: Color(0xff18304B)),),
            value: _isChecked,
            onChanged: (bool value) {
              setState(() {
                _isChecked = value;
              });
            },
          ),
        ),
        Container(
          child: CheckboxListTile(
            activeColor:Color(0xff00B5F0),
            contentPadding: EdgeInsets.all(0.5),
            title: const Text('الأكثر ترشيحاً(Recommended)',style: TextStyle(fontSize: 15,color: Color(0xff18304B)),),
            value: _isChecked,
            onChanged: (bool value) {
              setState(() {
                _isChecked = value;
              });
            },
          ),
        ),
      ],
    );
  }
}