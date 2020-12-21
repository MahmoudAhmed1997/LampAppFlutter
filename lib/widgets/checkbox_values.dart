import 'package:flutter/material.dart';

class GetCheckValue extends StatefulWidget {
  @override
  GetCheckValueState createState() {
    return new GetCheckValueState();
  }
}

class GetCheckValueState extends State<GetCheckValue> {
  bool _isChecked1 = true;
  bool _isChecked2 = true;
  bool _isChecked3 = true;
  bool _isChecked4 = true;
  bool _isChecked5 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              child: Text(
            "عرض حسب",
            style: TextStyle(fontSize: 15, color: Color(0xff18304B)),
          )),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'الأكثر طلباً',
                  style: TextStyle(fontSize: 15, color: Color(0xff18304B)),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: !_isChecked1
                          ? Color(0xffF9F9FF)
                          : Color(0xff00B5F0),
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      )),
                  width: 24,
                  height: 24,
                      child:Theme(
                        data: ThemeData(

                          unselectedWidgetColor: Colors.transparent, // Your color
                        ),
                        child: Checkbox(



                          activeColor: Colors.transparent,
                          autofocus: false,
                          // checkColor: Colors.white,
                          value: _isChecked1,
                        //  tristate: false,
                          onChanged: (bool isChecked) {
                            setState(() {
                              _isChecked1 = !_isChecked1;
                            });
                          },
                        ),
                      ),
                    ),

    ],
            ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'الأحدث',
                style: TextStyle(fontSize: 15, color: Color(0xff18304B)),
              ),
              Container(
                decoration: BoxDecoration(
                    color: !_isChecked2
                        ? Color(0xffF9F9FF)
                        : Color(0xff00B5F0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    )),
                width: 24,
                height: 24,
                child:Theme(
                  data: ThemeData(

                    unselectedWidgetColor: Colors.transparent, // Your color
                  ),
                  child: Checkbox(



                    activeColor: Colors.transparent,
                    autofocus: false,
                    // checkColor: Colors.white,
                    value: _isChecked2,
                    //  tristate: false,
                    onChanged: (bool isChecked) {
                      setState(() {
                        _isChecked2 = !_isChecked2;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'الأقل سعراً',
                style: TextStyle(fontSize: 15, color: Color(0xff18304B)),
              ),
              Container(
                decoration: BoxDecoration(
                    color: !_isChecked3
                        ? Color(0xffF9F9FF)
                        : Color(0xff00B5F0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    )),
                width: 24,
                height: 24,
                child:Theme(
                  data: ThemeData(

                    unselectedWidgetColor: Colors.transparent, // Your color
                  ),
                  child: Checkbox(



                    activeColor: Colors.transparent,
                    autofocus: false,
                    // checkColor: Colors.white,
                    value: _isChecked3,
                    //  tristate: false,
                    onChanged: (bool isChecked) {
                      setState(() {
                        _isChecked3 = !_isChecked3;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'ترتيب أبجدي (أ - ي)',
                style: TextStyle(fontSize: 15, color: Color(0xff18304B)),
              ),
              Container(
                decoration: BoxDecoration(
                    color: !_isChecked4
                        ? Color(0xffF9F9FF)
                        : Color(0xff00B5F0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    )),
                width: 24,
                height: 24,
                child:Theme(
                  data: ThemeData(

                    unselectedWidgetColor: Colors.transparent, // Your color
                  ),
                  child: Checkbox(



                    activeColor: Colors.transparent,
                    autofocus: false,
                    // checkColor: Colors.white,
                    value: _isChecked4,
                    //  tristate: false,
                    onChanged: (bool isChecked) {
                      setState(() {
                        _isChecked4 = !_isChecked4;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'الأكثر ترشيحاً(Recommended)',
                style: TextStyle(fontSize: 15, color: Color(0xff18304B)),
              ),
              Container(
                decoration: BoxDecoration(
                    color: !_isChecked5
                        ? Color(0xffF9F9FF)
                        : Color(0xff00B5F0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    )),
                width: 24,
                height: 24,
                child:Theme(
                  data: ThemeData(

                    unselectedWidgetColor: Colors.transparent, // Your color
                  ),
                  child: Checkbox(



                    activeColor: Colors.transparent,
                    autofocus: false,
                    // checkColor: Colors.white,
                    value: _isChecked5,
                    //  tristate: false,
                    onChanged: (bool isChecked) {
                      setState(() {
                        _isChecked5 = !_isChecked5;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
