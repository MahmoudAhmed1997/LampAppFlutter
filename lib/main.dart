import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:lamp/provider/auth.dart';
import 'package:lamp/provider/designer.dart';
import 'package:lamp/classes/login_model.dart';
import 'package:lamp/screens/fliters_screen.dart';
import 'package:lamp/provider/designers.dart';
import 'package:lamp/provider/pages_api/about_page_api.dart';
import 'package:provider/provider.dart';
import 'localization/demo_localization.dart';
import 'package:lamp/router/custom_router.dart';
import 'router/route_constants.dart';
import 'screens/splash_screen.dart';
import 'package:lamp/localization/language_constants.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:lamp/screens/home_screen.dart';
import 'dart:convert';
import 'screens/login_screen.dart';

void main() => runApp(SplashScreenH());

class SplashScreenH extends StatefulWidget {
  SplashScreenH({Key key}) : super(key: key);

  static void setLocale(BuildContext context, Locale newLocale) {
    _SplashScreenHState state =
        context.findAncestorStateOfType<_SplashScreenHState>();
    state.setLocale(newLocale);
  }

  @override
  _SplashScreenHState createState() => _SplashScreenHState();
}

class _SplashScreenHState extends State<SplashScreenH> {
  Locale _locale;
  // String _token;
  // Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  // Future<String> getAccessToken() async {
  //   final SharedPreferences prefs = await _prefs;
  //   String _authorizationToken;
  //
  //   if (prefs.getString(_token) != null) {
  //     _authorizationToken = 'Bearer ' + prefs.getString(_token);
  //   }
  //   return _authorizationToken;
  // }

  // Future<bool> setToken(String value) async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   return prefs.setString('token', value);
  // }
  // Future<String> getToken() async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   print(prefs.getString('token'));
  //   return prefs.getString('token');
  //
  // }
  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() {
    getLocale().then((locale) {
      setState(() {
        this._locale = locale;
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    // if (this._locale == null) {
    //   return Container(
    //     child: Center(
    //       child: CircularProgressIndicator(
    //           valueColor: AlwaysStoppedAnimation<Color>(Colors.blue[800])),
    //     ),
    //   );
    // } else {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider.value(
            value: LoginModel(),
          ),
          ChangeNotifierProvider.value(
            value: Designers(),
          ),
          ChangeNotifierProvider.value(
            value: Designer(),
          ),
          ChangeNotifierProvider.value(
            value: AboutPageApi(),
          ),
        ],
        child: Consumer<LoginModel>(
            builder: (ctx, auth, _) => MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(
                      primarySwatch: Colors.blue,
                      fontFamily: 'DINNextLTArabic'),
                  locale: _locale,
                  supportedLocales: [
                    Locale("en", "US"),
                    Locale("ar", "SA"),
                  ],
                  localizationsDelegates: [
                    DemoLocalization.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  localeResolutionCallback: (locale, supportedLocales) {
                    for (var supportedLocale in supportedLocales) {
                      if (supportedLocale.languageCode == locale.languageCode &&
                          supportedLocale.countryCode == locale.countryCode) {
                        return supportedLocale;
                      }
                    }
                    return supportedLocales.first;
                  },
              home: auth.isAuth ?FiltersProducts():FutureBuilder(
                future: auth.tryAutoLogin(),
                builder: (ctx, authResultSnapshots) =>
                authResultSnapshots.connectionState ==
                    ConnectionState.waiting
                    ? SplashScreen()
                    : LoginScreen(),
              ),
                )
            // FutureBuilder(
            // future: _getDate(),
            // builder: (BuildContext context, AsyncSnapshot snapshot) {
            //   if(snapshot.hasData){
            //     return MaterialApp(
            //       debugShowCheckedModeBanner: false,
            //       theme: ThemeData(
            //           primarySwatch: Colors.blue, fontFamily: 'DINNextLTArabic'),
            //       locale: _locale,
            //       supportedLocales: [
            //         Locale("en", "US"),
            //         Locale("ar", "SA"),
            //       ],
            //       localizationsDelegates: [
            //         DemoLocalization.delegate,
            //         GlobalMaterialLocalizations.delegate,
            //         GlobalWidgetsLocalizations.delegate,
            //         GlobalCupertinoLocalizations.delegate,
            //       ],
            //       localeResolutionCallback: (locale, supportedLocales) {
            //         for (var supportedLocale in supportedLocales) {
            //           if (supportedLocale.languageCode == locale.languageCode &&
            //               supportedLocale.countryCode == locale.countryCode) {
            //             return supportedLocale;
            //           }
            //         }
            //         return supportedLocales.first;
            //       },
            //       onGenerateRoute: CustomRouter.generatedRoute,
            //       initialRoute: splashRoute,
            //     );
            //   }else
            //   return Center(child: CircularProgressIndicator());
            // }),
            ));
  }
//   }
// }
// routes: {
//     EditProfileScreen.routeName: (ctx) => EditProfileScreen(),
//   CartsScreen.routeName:(ctx) =>CartsScreen(),
//   AboutAppScreen.routeName:(ctx) =>AboutAppScreen(),
//   AddressesScreen.routeName:(ctx) =>AddressesScreen(),
//   AgreementsScreen.routeName:(ctx) =>AgreementsScreen(),
//   CartsSecondScreen.routeName:(ctx) =>CartsSecondScreen(),
//   ContactUsScreen.routeName:(ctx) =>ContactUsScreen(),
//   DesignerProfile.routeName:(ctx) =>DesignerProfile(),
//   FavouriteScreen.routeName:(ctx) =>FavouriteScreen(),
//   FavouriteSecondScreen.routeName:(ctx) =>FavouriteSecondScreen(),
//   FiltersProducts.routeName:(ctx) =>FiltersProducts(),
//   HomeScreen.routeName:(ctx) =>HomeScreen(),
//   LoginScreen.routeName:(ctx) =>LoginScreen(),
//   NewDeliveryAddressesScreen.routeName:(ctx) =>NewDeliveryAddressesScreen(),
//   NewPasswordScreen.routeName:(ctx) =>NewPasswordScreen(),
//   NewProductsScreen.routeName:(ctx) =>NewProductsScreen(),
//   NotificationsScreen.routeName:(ctx) =>NotificationsScreen(),
//   OrderAddressScreen.routeName:(ctx) =>OrderAddressScreen(),
//   OrderInformation.routeName:(ctx) =>OrderInformation(),
//   OrderInformationScreen.routeName:(ctx) =>OrderInformationScreen(),
//   OrdersFirstScreen.routeName:(ctx) =>OrdersFirstScreen(),
//   OrdersListScreen.routeName:(ctx) =>OrdersListScreen(),
//   OrdersSecondScreen.routeName:(ctx) =>OrdersSecondScreen(),
//   OrdersThirdScreen.routeName:(ctx) =>OrdersThirdScreen(),
//   DetailsProductScreen.routeName:(ctx) =>DetailsProductScreen(),
//   OrderReceiptScreen.routeName:(ctx) =>OrderReceiptScreen(),
//   ResetScreen.routeName:(ctx) =>ResetScreen(),
//   SettingsScreen.routeName:(ctx) =>SettingsScreen(),
//   SignUpScreen.routeName:(ctx) =>SignUpScreen(),
//   SplashScreen.routeName:(ctx) =>SplashScreen(),
//   SuccessOrderScreen.routeName:(ctx) =>SuccessOrderScreen(),
//   UserProfileScreen.routeName:(ctx) =>UserProfileScreen(),
//
//
//
}
