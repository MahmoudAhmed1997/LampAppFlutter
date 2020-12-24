import 'package:flutter/material.dart';
import 'package:lamp/provider/addresses.dart';
import 'package:lamp/localization/language_constants.dart';


class AddressCard extends StatefulWidget {
  @override
  _AddressCardState createState() => _AddressCardState();
}

class _AddressCardState extends State<AddressCard> {
  Addresses addresses  =Addresses();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Color(0xffF4F4F4))),
      height: 275,
      width: 337,
      child: ListView.separated(

        separatorBuilder: (BuildContext context, int index) {

          return Divider();
        },
        itemCount:addresses.addresses_list.length,
        scrollDirection: Axis.vertical,

        itemBuilder: (context,  index){
          return  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,


              children: [
                Container(
                  decoration: BoxDecoration(
                      color: !addresses.addresses_list[index].isChecked
                          ? Color(0xffF9F9FF)
                          : Color(0xff00B5F0),
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      )),
                  width: 27,
                  height: 27,
                  child:Theme(
                    data: ThemeData(

                      unselectedWidgetColor: Colors.transparent, // Your color
                    ),
                    child: Checkbox(



                      activeColor: Colors.transparent,
                      autofocus: false,
                      // checkColor: Colors.white,
                      value: addresses.addresses_list[index].isChecked,
                      //  tristate: false,
                      onChanged: (bool isChecked1) {
                        setState(() {
                          addresses.addresses_list[index].isChecked = !addresses.addresses_list[index].isChecked;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(width: 15,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,

                  children: [
                    Text(
          getTranslated(context, "home_address")         ,
                      style: TextStyle(fontSize: 16,color: Color(0xff18304B)),),
                    Text("نانمن, 36221 , الأحساء , المنطقة الشرقي...",style: TextStyle(color: Color(0xff7F8FA6),fontSize: 13),),
                  ],)
              ],),
          );

        },



      ),

    );
  }
}
