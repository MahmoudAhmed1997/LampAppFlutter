import 'package:flutter/material.dart';
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

void main() {
  runApp(
      MaterialApp(
        theme: ThemeData(fontFamily: 'DINNextLTArabic'),


    debugShowCheckedModeBanner: false, home:SplashScreen(),
    routes: {
        EditProfileScreen.routeName: (ctx) => EditProfileScreen(),
      CartsScreen.routeName:(ctx) =>CartsScreen(),
      AboutAppScreen.routeName:(ctx) =>AboutAppScreen(),
      AddressesScreen.routeName:(ctx) =>AddressesScreen(),
      AgreementsScreen.routeName:(ctx) =>AgreementsScreen(),
      CartsSecondScreen.routeName:(ctx) =>CartsSecondScreen(),
      ContactUsScreen.routeName:(ctx) =>ContactUsScreen(),
      DesignerProfile.routeName:(ctx) =>DesignerProfile(),
      FavouriteScreen.routeName:(ctx) =>FavouriteScreen(),
      FavouriteSecondScreen.routeName:(ctx) =>FavouriteSecondScreen(),
      FiltersProducts.routeName:(ctx) =>FiltersProducts(),
      HomeScreen.routeName:(ctx) =>HomeScreen(),
      LoginScreen.routeName:(ctx) =>LoginScreen(),
      NewDeliveryAddressesScreen.routeName:(ctx) =>NewDeliveryAddressesScreen(),
      NewPasswordScreen.routeName:(ctx) =>NewPasswordScreen(),
      NewProductsScreen.routeName:(ctx) =>NewProductsScreen(),
      NotificationsScreen.routeName:(ctx) =>NotificationsScreen(),
      OrderAddressScreen.routeName:(ctx) =>OrderAddressScreen(),
      OrderInformation.routeName:(ctx) =>OrderInformation(),
      OrderInformationScreen.routeName:(ctx) =>OrderInformationScreen(),
      OrdersFirstScreen.routeName:(ctx) =>OrdersFirstScreen(),
      OrdersListScreen.routeName:(ctx) =>OrdersListScreen(),
      OrdersSecondScreen.routeName:(ctx) =>OrdersSecondScreen(),
      OrdersThirdScreen.routeName:(ctx) =>OrdersThirdScreen(),
      DetailsProductScreen.routeName:(ctx) =>DetailsProductScreen(),
      OrderReceiptScreen.routeName:(ctx) =>OrderReceiptScreen(),
      ResetScreen.routeName:(ctx) =>ResetScreen(),
      SettingsScreen.routeName:(ctx) =>SettingsScreen(),
      SignUpScreen.routeName:(ctx) =>SignUpScreen(),
      SplashScreen.routeName:(ctx) =>SplashScreen(),
      SuccessOrderScreen.routeName:(ctx) =>SuccessOrderScreen(),
      UserProfileScreen.routeName:(ctx) =>UserProfileScreen(),


    },

  ));
}
