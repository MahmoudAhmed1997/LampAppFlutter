import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/widgets/addrss_card.dart';
import 'package:lamp/widgets/address_card_delivery.dart';
import 'package:lamp/widgets/product_card.dart';
import 'package:lamp/localization/language_constants.dart';
import 'package:lamp/screens/order_adress_screen.dart';
import 'new_delivery _address.dart';
import 'package:lamp/provider/profile_api.dart';

class AddressesScreen extends StatefulWidget {
  static const routeName = '/addresses_screen';

  @override
  _AddressesScreenState createState() => _AddressesScreenState();
}

class _AddressesScreenState extends State<AddressesScreen> {
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
    Locale myLocale = Localizations.localeOf(context);

    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Color(0xff00B5F0),
          title: Text(
            getTranslated(context, "delivery_addresses"),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal)
          ),
          leading:
          myLocale.languageCode == "ar"?Padding(
            padding: const EdgeInsets.only(right:16.0),
            child: Container(
              height: 38,
              width: 38,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child:
                SvgPicture.asset("assets/icons/button_right.svg"),

              ),
            ),
          ):
          Padding(
            padding: const EdgeInsets.only(left:16.0),
            child: Container(
              height: 38,
              width: 38,
              child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child:
                  SvgPicture.asset("assets/icons/button_left.svg")
              ),
            ),
          )
      ),
      body: Stack(overflow: Overflow.visible, fit: StackFit.expand, children: [
        FutureBuilder<UserProfile>(
          future: fetchData,
          builder: (context,snapshot){
            if(snapshot.hasData){
              return Padding(
                padding: const EdgeInsets.all(18.0),
                child: ListView.separated(
                  separatorBuilder: (BuildContext context, int i) {

                    return SizedBox(height: 5,);
                  },
                  scrollDirection: Axis.vertical,
                  itemCount: 15,

                  itemBuilder: (context, index){

                    return Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white),
                      width:348,height:88,
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
                                  snapshot.data.user.name,
                                  //   getTranslated(context, "home_address"),
                                  style: TextStyle(fontSize: 16,color: Color(0xff18304B)),),
                                Text(snapshot.data.user.name,style: TextStyle(color: Color(0xff7F8FA6),fontSize: 13),),
                              ],)
                          ],),
                      ),
                    );

                  },



                ),
              );
              //   SingleChildScrollView(
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Padding(
              //         padding: const EdgeInsets.all(8.0),
              //         child: Center(
              //           child: AddressCardDelivery(),
              //         ),
              //       ),
              //     ],
              //   ),
              // );
            }else if(snapshot.hasError){
              return Text("${snapshot.error}");
            }

            // By default, show a loading spinner.
            return Center(child: CircularProgressIndicator());
          },

        ),
        Positioned(
          bottom: 30,
          right: 20,
          left: 20,
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => NewDeliveryAddressesScreen()));
            },
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    color: Color(0xff00B5F0),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                      width: 330,
                      height: 54,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            getTranslated(context, "new_delivery_address"),
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
