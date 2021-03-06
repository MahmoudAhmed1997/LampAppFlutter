import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamp/classes/language.dart';
import 'package:lamp/screens/addresses_screen.dart';
import 'package:lamp/screens/edit_profile_screen.dart';
import 'package:lamp/screens/login_screen.dart';
import 'package:lamp/screens/setting_screen.dart';
import 'package:lamp/widgets/appbar_widgets.dart';
import 'package:lamp/widgets/notification_icon.dart';
import 'package:lamp/widgets/prod.dart';
import 'package:lamp/localization/demo_localization.dart';
import 'package:lamp/localization/language_constants.dart';
import 'package:lamp/provider/profile_api.dart';
import 'package:lamp/provider/settings_api/language_api.dart';
import 'package:lamp/provider/pages_api/about_page_api.dart';
import '../main.dart';

class UserProfileScreen extends StatefulWidget {
  static const routeName = '/user_profile_screen';

  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  void _changeLanguage(Language language) async {
    Locale _locale = await setLocale(language.languageCode);
    SplashScreenH.setLocale(context, _locale);
  }
  void _showSuccessDialog() {
    showTimePicker(context: context, initialTime: TimeOfDay.now());
  }
  Future<UserProfile> futureUserProfile;
  Future<LanguageApi> futureLanguageApi;
 // Future<AboutPage> futureAbout;


 // AboutPage about = AboutPage();
  UserProfile user = UserProfile();
  LanguageApi lang = LanguageApi();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureUserProfile = user.fetchUserProfile();
    futureLanguageApi = lang.fetchLanguage();
  //  futureAbout = about.fetchAbout();
  }
  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0xffFDFDFF),
      body: FutureBuilder<UserProfile>(
        future: futureUserProfile,
        builder: (context,snapshot){
          if(snapshot.hasData){
            return  Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 130,
                  color: Color(0xff00B5F0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50, right: 25, left: 25),
                    child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        snapshot.data.user.name,
                                        style: TextStyle(fontSize: 20, color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Text(
                                        snapshot.data.user.email,
                                        style: TextStyle(fontSize: 14, color: Colors.white),
                                      )
                                    ],
                                  ),
                                  NotificationIcon(),
                                ],
                              ),
                            ],
                          ))),


                Container(
                  height: 55.0,

                  decoration: new BoxDecoration(
                    gradient: new LinearGradient(
                      begin: const Alignment(0.0, -2.0),
                      end: const Alignment(0.0, 0.1),
                      colors: <Color>[
                        Color(0xff707070).withOpacity(0.1),
                        Colors.white.withOpacity(0.3)
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 48.0, left: 45),
                    child: Container(
                      width: 350,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 3.0),
                                child: Container(
                                    width: 17,
                                    height: 20,
                                    child: SvgPicture.asset("assets/icons/fav.svg")),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                getTranslated(context, "favourite"),
                                style:
                                TextStyle(fontSize: 17, color: Color(0xff18304B)),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                "15",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Color(0xff18304B),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                getTranslated(context, "your_orders"),
                                style:
                                TextStyle(fontSize: 17, color: Color(0xff18304B)),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                "150",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Color(0xff18304B),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => EditProfileScreen()));
                          },
                          child: Container(
                            width: 350,
                            height: 61,
                            color: Color(0xffFFFFFF),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      SvgPicture.asset(
                                        "assets/icons/edit_profile.svg",
                                        color: Color(0xff464451),
                                      ),
                                      SizedBox(
                                        width: 30.0,
                                      ),
                                      Text(
                                        getTranslated(context, "personal_inf"),
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xff18304B),
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                  myLocale.languageCode=="ar"?
                                  SvgPicture.asset("assets/icons/arrow_right.svg"):SvgPicture.asset("assets/icons/ic_arrow_right.svg")
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),


                        InkWell(
                          onTap: (){
                            myLocale.languageCode=="en"?
                            _changeLanguage(Language.languageList().last): _changeLanguage(Language.languageList().first);
                            Navigator.pushAndRemoveUntil(
                                context,
                                PageRouteBuilder(pageBuilder: (BuildContext context, Animation animation,
                                    Animation secondaryAnimation) {
                                  return LoginScreen();
                                }, transitionsBuilder: (BuildContext context, Animation<double> animation,
                                    Animation<double> secondaryAnimation, Widget child) {
                                  return new SlideTransition(
                                    position: new Tween<Offset>(
                                      begin: const Offset(1.0, 0.0),
                                      end: Offset.zero,
                                    ).animate(animation),
                                    child: child,
                                  );
                                }),
                                    (Route route) => false);


                          },
                          child: Container(
                            width: 350,
                            height: 61,
                            decoration: new BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              gradient: new LinearGradient(
                                begin: const Alignment(0.0, -5.0),
                                end: const Alignment(0.0, 0.1),
                                colors: <Color>[
                                  Color(0xff03004D).withOpacity(0.1),
                                  Colors.white.withOpacity(0.3)
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      SvgPicture.asset(
                                        "assets/icons/translate.svg",
                                        color: Color(0xff18304B),
                                      ),
                                      SizedBox(
                                        width: 30.0,
                                      ),
                                      Text(
                                        getTranslated(context, "change_lang"),
                                        style: TextStyle(
                                            fontSize: 16, color: Color(0xff18304B)),
                                      ),

                                    ],
                                  ),
                                  myLocale.languageCode=="ar"?
                                  Row(
                                    children: [
                                      Text("Arabic",style: TextStyle(fontSize: 15,color: Color(0xff18304B)),),
                                      SvgPicture.asset("assets/images/sau.svg",height: 17,),
                                      SvgPicture.asset("assets/icons/arrow_right.svg"),
                                    ],
                                  ):Row(
                                    children: [
                                      Text("English",style: TextStyle(fontSize: 15,color: Color(0xff18304B)),),
                                      SvgPicture.asset("assets/images/eng.svg",height: 17,),

                                      SvgPicture.asset("assets/icons/ic_arrow_right.svg"),
                                    ],
                                  )
                            ],
                              ),
                            ),
                          ),
                        ),


                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SettingsScreen()));
                          },
                          child: Container(
                            width: 350,
                            height: 61,
                            decoration: new BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              gradient: new LinearGradient(
                                begin: const Alignment(0.0, -5.0),
                                end: const Alignment(0.0, 0.1),
                                colors: <Color>[
                                  Color(0xff03004D).withOpacity(0.1),
                                  Colors.white.withOpacity(0.3)
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      SvgPicture.asset(
                                        "assets/icons/setting_icon.svg",
                                        color: Color(0xff18304B),
                                      ),
                                      SizedBox(
                                        width: 30.0,
                                      ),
                                      Text(
                                        getTranslated(context, "general_setting"),
                                        style: TextStyle(
                                            fontSize: 16, color: Color(0xff18304B)),
                                      ),
                                    ],
                                  ),
                                  myLocale.languageCode=="ar"?
                                  SvgPicture.asset("assets/icons/arrow_right.svg"):SvgPicture.asset("assets/icons/ic_arrow_right.svg")
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => AddressesScreen()));
                          },
                          child: Container(
                            width: 350,
                            height: 61,
                            decoration: new BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              gradient: new LinearGradient(
                                begin: const Alignment(0.0, -5.0),
                                end: const Alignment(0.0, 0.1),
                                colors: <Color>[
                                  Color(0xff03004D).withOpacity(0.1),
                                  Colors.white.withOpacity(0.3)
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      SvgPicture.asset(
                                        "assets/icons/location_icon.svg",
                                        color: Color(0xff18304B),
                                      ),
                                      SizedBox(
                                        width: 30.0,
                                      ),
                                      Text(
                                        getTranslated(context, "manage_addresses"),
                                        style: TextStyle(
                                            fontSize: 16, color: Color(0xff18304B)),
                                      ),
                                    ],
                                  ),
                                  myLocale.languageCode=="ar"?
                                  SvgPicture.asset("assets/icons/arrow_right.svg"):SvgPicture.asset("assets/icons/ic_arrow_right.svg")
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                          },
                          child: Container(
                            width: 350,
                            height: 61,
                            decoration: new BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              gradient: new LinearGradient(
                                begin: const Alignment(0.0, -5.0),
                                end: const Alignment(0.0, 0.1),
                                colors: <Color>[
                                  Color(0xff03004D).withOpacity(0.1),
                                  Colors.white.withOpacity(0.3)
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 30,
                                        child: SvgPicture.asset(
                                          "assets/icons/log_out.svg",
                                        ),
                                      ),
                                      SizedBox(
                                        width: 25.0,
                                      ),
                                      Text(
                                        getTranslated(context, "log_out"),
                                        style: TextStyle(
                                            fontSize: 16, color: Color(0xff18304B)),
                                      ),
                                    ],
                                  ),
                                  myLocale.languageCode=="ar"?
                                  SvgPicture.asset("assets/icons/arrow_right.svg"):SvgPicture.asset("assets/icons/ic_arrow_right.svg"),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ]),
                ),
                ],);
          }else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }

          // By default, show a loading spinner.
          return Center(child: CircularProgressIndicator());
        },

      ),
    );
  }
}
