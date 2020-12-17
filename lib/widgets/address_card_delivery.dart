import 'package:flutter/material.dart';


class AddressCardDelivery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      height: 275,
      width: 337,
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {

          return SizedBox(height: 5,);
        },
        itemCount: 3,
        scrollDirection: Axis.vertical,

        itemBuilder: (context,  index){
          return  Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white),
            width: 348,height: 88,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,


                children: [
                  Stack(
                    children: [
                      Container(
                        child: ImageIcon(
                          AssetImage(
                              "assets/icons/check_box.png"),
                          color: Color(0xff00B5F0),
                        ),

                      ),

                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: ImageIcon(

                          AssetImage(
                              "assets/icons/check.png"),
                          color: Colors.white,
                          size: 10,


                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Text("عنوان المنزل",style: TextStyle(fontSize: 16,color: Color(0xff18304B)),),
                      Text("نانمن, 36221 , الأحساء , المنطقة الشرقي...",style: TextStyle(color: Color(0xff7F8FA6),fontSize: 13),),
                    ],)
                ],),
            ),
          );

        },



      ),

    );
  }
}
