import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'localization/demo_localization.dart';
import 'package:lamp/router/custom_router.dart';
import 'router/route_constants.dart';
import 'package:lamp/localization/language_constants.dart';
import 'package:lamp/screens/about_app_screen.dart';
import 'package:lamp/screens/addresses_screen.dart';
import 'package:lamp/screens/agreements_screen.dart';
import 'package:lamp/screens/cart_screen.dart';
import 'package:lamp/screens/cart_second_screen.dart';
import 'package:lamp/screens/contact_us_screen.dart';
import 'package:lamp/screens/designer_profile.dart';
import 'package:lamp/screens/edit_profile_screen.dart';
import 'package:lamp/screens/favourite_screen.dart';
import 'package:lamp/screens/favourite_second_screen.dart';
import 'package:lamp/screens/fliters_screen.dart';
import 'package:lamp/screens/home.dart';
import 'package:lamp/screens/home_screen.dart';
import 'package:lamp/screens/login_screen.dart';
import 'package:lamp/screens/new_delivery%20_address.dart';
import 'package:lamp/screens/new_password_screen.dart';
import 'package:lamp/screens/new_product_screen.dart';
import 'package:lamp/screens/notifications_screen.dart';
import 'package:lamp/screens/order_adress_screen.dart';
import 'package:lamp/screens/order_information_screen.dart';
import 'package:lamp/screens/order_informations.dart';
import 'package:lamp/screens/orders_list.dart';
import 'package:lamp/screens/orders_first_screen.dart';
import 'package:lamp/screens/orders_second_screen.dart';
import 'package:lamp/screens/orders_third_screen.dart';
import 'package:lamp/screens/product_detailes.dart';
import 'package:lamp/screens/receipt_order.dart';
import 'package:lamp/screens/reset_screen.dart';
import 'package:lamp/screens/setting_screen.dart';
import 'package:lamp/screens/signup_screen.dart';
import 'package:lamp/screens/splash_screen.dart';
import 'package:lamp/screens/success_order_screen.dart';
import 'package:lamp/screens/test.dart';
import 'package:lamp/screens/user_profile_screen.dart';
import 'package:lamp/widgets/designer_card.dart';
import 'package:lamp/widgets/prod.dart';
import 'package:lamp/widgets/rating_order.dart';
import 'package:lamp/widgets/sliderrr.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);
  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>();
    state.setLocale(newLocale);

  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale;
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
    if (this._locale == null) {
      return Container(
        child: Center(
          child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue[800])),
        ),
      );
    } else {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Flutter Localization Demo",
        theme: ThemeData(
            primarySwatch: Colors.blue, fontFamily: 'DINNextLTArabic'),
        locale: _locale,
        supportedLocales: [
          Locale("en", "US"),
          Locale("fa", "IR"),
          Locale("ar", "SA"),
          Locale("hi", "IN")
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
        onGenerateRoute: CustomRouter.generatedRoute,
        initialRoute: splashRoute,
      );
    }
  }
}
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
// },
