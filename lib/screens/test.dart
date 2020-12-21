import 'package:flutter/material.dart';

class DisplayAnswer extends StatelessWidget {

  final String _text;

  DisplayAnswer(this._text);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Material(
        color: Colors.greenAccent,
        child: Ink(
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 5.0), color: Colors.white),
              child: Text(_text,style: TextStyle(fontSize: 50.0), textAlign: TextAlign.center,),
            ),
          ),
        ),
      ),
    );
  }
}


class NumButtons extends StatelessWidget {
   String _number;
   String _calcText;

   Function callback;


  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {
          _calcText = _calcText + _number;
          print(_calcText);
          DisplayAnswer(_calcText);
        } ,
        child: Text(_number.toString(), style: TextStyle(fontSize: 30.0),),
        color: Colors.white
    );
  }
}