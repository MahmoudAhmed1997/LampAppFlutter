import 'package:flutter/material.dart';
import 'package:lamp/localization/language_constants.dart';
import 'package:lamp/provider/profile_api.dart';
class AddressCardDelivery extends StatefulWidget {



  @override
  _AddressCardDeliveryState createState() => _AddressCardDeliveryState();
}

class _AddressCardDeliveryState extends State<AddressCardDelivery> {
  UserProfile userProfile = UserProfile();
  Future<UserProfile> fetchData;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData = userProfile.fetchUserProfile();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<UserProfile>(
      future: fetchData,
      builder: (context,snapshot){
        if(snapshot.hasData){
          Container(
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
                            Text(
                              "widget.text",
                              //   getTranslated(context, "home_address"),
                              style: TextStyle(fontSize: 16,color: Color(0xff18304B)),),
                            Text("kjhgfdsdfghjk",style: TextStyle(color: Color(0xff7F8FA6),fontSize: 13),),
                          ],)
                      ],),
                  ),
                );

              },



            ),

          );
        }else if(snapshot.hasError){
          return Text("${snapshot.error}");
        }

        // By default, show a loading spinner.
        return Center(child: CircularProgressIndicator());
      },

    );
  }
}
