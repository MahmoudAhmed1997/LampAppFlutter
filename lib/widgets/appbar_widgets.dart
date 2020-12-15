import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  CustomAppBar({Key key, this.title}) : preferredSize = Size.fromHeight(116.0), super(key: key);

  @override
  final Size preferredSize;
  final String title;

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar>{

  String get title => widget.title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff00B5F0),
      centerTitle: true,
      title:Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset("assets/icons/cart.svg"),
              Text(title),

              SvgPicture.asset("assets/icons/button_right.svg"),
          ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 45,
                width: 343,
                child: TextFormField(
                  enableInteractiveSelection: false,
                  style: TextStyle(color: Colors.grey),
                  key: ValueKey("البحث"),
                  autocorrect: false,
                  textCapitalization: TextCapitalization.none,
                  enableSuggestions: false,
                  validator: (value) {
                    if (value.isEmpty) {
                      return '';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    suffixIcon: Container(
                      width: 15,
                      height: 12,
                      color: Colors.amber,
                      child: SvgPicture.asset(
                        "assets/icons/search.svg",
                        fit: BoxFit.fitWidth,
                        allowDrawingOutsideViewBox: true,
                        matchTextDirection: true,
                      ),
                    ),
                    alignLabelWithHint: true,
                    filled: true,
                    fillColor: Color(0xffFAFAFA),
                    labelText: "ابحث عن منتج",
                    labelStyle:
                    TextStyle(color: Color(0xffA4B0BE), fontSize: 15),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                      borderSide: new BorderSide(color: Color(0xff18304B)),
                      borderRadius: new BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}