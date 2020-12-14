// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:lamp/screens/login_screen.dart';
// import 'package:lamp/screens/signup_screen.dart';
// import 'package:lamp/screens/splash_screen.dart';
//
//
// class BottomAppBarItems extends StatefulWidget {
//   final index;
//   final String id;
//
//   BottomAppBarItems({this.index, this.id});
//
//   @override
//   _BottomAppBarItemsState createState() => _BottomAppBarItemsState();
// }
//
// class _BottomAppBarItemsState extends State<BottomAppBarItems> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.transparent,
//       height: 80,
//       child: BottomAppBar(
//         elevation: 0.0,
//         child: new Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               InkWell(
//                 onTap: (){
//                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SplashScreen()));
//                 },
//                 child: Column(
//                   children: [
//                     widget.index==1?SvgPicture.asset("assets/images/indicator.svg",color: Color(0xff00B5F0),):Text(""),
//
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child:
//                         SvgPicture.asset("assets/icons/user_icon.svg",
//                         color: widget.index == 1
//                             ? Color(0xff4349B5)
//                             : Color(0xffA4B0BE),
//                       ),
//                     ),
//                     Text(
//                       "الحساب",
//                       style: TextStyle(                      color: widget.index == 1 ? Color(0xff4349B5) : Color(0xffA4B0BE),
//                            fontSize: 11),
//                     )
//                   ],
//                 ),
//               ),
//               InkWell(
//                 onTap: (){
//                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUpScreen()));
//                 },
//                 child: Column(
//                   children: [
//                     widget.index==2?SvgPicture.asset("assets/images/indicator.svg",color: Color(0xff00B5F0),):Text(""),
//
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child:
//                       SvgPicture.asset("assets/icons/favourite.svg",
//                         color: widget.index == 2
//                             ? Color(0xff4349B5)
//                             : Color(0xffA4B0BE),
//                       ),
//                     ),                    Text(
//                       "المفضلة",
//                       style: TextStyle(                      color: widget.index == 2 ? Color(0xff4349B5) : Color(0xffA4B0BE),
//
//                           fontSize: 11),
//                     )
//                   ],
//                 ),
//               ),
//               InkWell(
//                 onTap: (){
//                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginScreen()));
//                 },
//                 child: Column(
//                   children: [
//                     widget.index==3?SvgPicture.asset("assets/images/indicator.svg",color: Color(0xff00B5F0),):Text(""),
//
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child:
//                       SvgPicture.asset("assets/icons/icon_shop.svg",
//                         color: widget.index == 1
//                             ? Color(0xff4349B5)
//                             : Color(0xffA4B0BE),
//                       ),
//                     ),                    Text(
//                       "سلة الشراء",
//                       style: TextStyle(
//                           color: widget.index == 3
//                               ? Color(0xff4349B5)
//                               : Color(0xffA4B0BE),
//                           fontSize: 11),
//                     )
//                   ],
//                 ),
//               ),
//
//               InkWell(
//                 onTap: (){
//                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUpScreen()));
//                 },
//                 child: Column(
//                   children: [
//                     widget.index==4?SvgPicture.asset("assets/images/indicator.svg",color: Color(0xff00B5F0),):Text("")
//
//
//                 ,  Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child:
//                       SvgPicture.asset("assets/icons/i_categories.svg",
//                         color: widget.index == 4
//                             ? Color(0xff4349B5)
//                             : Color(0xffA4B0BE),
//                       ),
//                     ),                    Text(
//                       "الطلبات",
//                       style: TextStyle(                      color: widget.index == 2 ? Color(0xff4349B5) : Color(0xffA4B0BE),
//
//                           fontSize: 11),
//                     )
//                   ],
//                 ),
//               ),
//               InkWell(
//                 onTap: (){
//                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginScreen()));
//                 },
//                 child: Column(
//                   children: [
//                     widget.index==5?SvgPicture.asset("assets/images/indicator.svg",color: Color(0xff00B5F0),):Text(""),
//
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child:
//                       SvgPicture.asset("assets/icons/home.svg",
//                         color: widget.index == 2
//                             ? Color(0xff4349B5)
//                             : Color(0xffA4B0BE),
//                       ),
//                     ),                    Text(
//                       "الرئيسية",
//                       style: TextStyle(
//                           color: widget.index == 3
//                               ? Color(0xff4349B5)
//                               : Color(0xffA4B0BE),
//                           fontSize: 11),
//                     )
//                   ],
//                 ),
//               ),
//             ]),
//       ),
//     );
//   }
// }
