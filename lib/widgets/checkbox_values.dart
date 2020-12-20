import 'package:flutter/material.dart';

class GetCheckValue extends StatefulWidget {
  @override
  GetCheckValueState createState() {
    return new GetCheckValueState();
  }
}

class GetCheckValueState extends State<GetCheckValue> {
  bool _isChecked = true;

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
          GestureDetector(
            onTap: () {
              setState(() {
                _isChecked = !_isChecked;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'الأكثر طلباً',
                  style: TextStyle(fontSize: 15, color: Color(0xff18304B)),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: (!_isChecked)
                          ? Color(0xffF9F9FF)
                          : Color(0xff00B5F0),
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      )),
                  width: 24,
                  height: 24,
                  child: Theme(
                    data: ThemeData(
                      unselectedWidgetColor: Colors.transparent,
                    ),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          _isChecked=!_isChecked;
                        });
                      },
                      child: Checkbox(
                        activeColor: Colors.transparent,
                        checkColor: Colors.white,
                        value: _isChecked,
                        tristate: false,
                        onChanged: (bool isChecked) {
                          setState(() {
                            _isChecked = !isChecked;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
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
                    color:
                        (!_isChecked) ? Color(0xffF9F9FF) : Color(0xff00B5F0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    )),
                width: 24,
                height: 24,
                child: Theme(
                  data: ThemeData(
                    unselectedWidgetColor: Colors.transparent,
                  ),
                  child: Checkbox(
                    activeColor: Colors.transparent,
                    checkColor: Colors.white,
                    value: _isChecked,
                    tristate: false,
                    onChanged: (bool isChecked) {
                      setState(() {
                        _isChecked = !isChecked;
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
                    color:
                        (!_isChecked) ? Color(0xffF9F9FF) : Color(0xff00B5F0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    )),
                width: 24,
                height: 24,
                child: Theme(
                  data: ThemeData(
                    unselectedWidgetColor: Colors.transparent,
                  ),
                  child: Checkbox(
                    activeColor: Colors.transparent,
                    checkColor: Colors.white,
                    value: _isChecked,
                    tristate: false,
                    onChanged: (bool isChecked) {
                      setState(() {
                        _isChecked = !isChecked;
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
                    color:
                        (!_isChecked) ? Color(0xffF9F9FF) : Color(0xff00B5F0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    )),
                width: 24,
                height: 24,
                child: Theme(
                  data: ThemeData(
                    unselectedWidgetColor: Colors.transparent,
                  ),
                  child: Checkbox(
                    activeColor: Colors.transparent,
                    checkColor: Colors.white,
                    value: _isChecked,
                    tristate: false,
                    onChanged: (bool isChecked) {
                      setState(() {
                        _isChecked = !isChecked;
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
                    color:
                        (!_isChecked) ? Color(0xffF9F9FF) : Color(0xff00B5F0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    )),
                width: 24,
                height: 24,
                child: Theme(
                  data: ThemeData(
                    unselectedWidgetColor: Colors.transparent,
                  ),
                  child: Checkbox(
                    activeColor: Colors.transparent,
                    checkColor: Colors.white,
                    value: _isChecked,
                    tristate: false,
                    onChanged: (bool isChecked) {
                      setState(() {
                        _isChecked = !isChecked;
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
