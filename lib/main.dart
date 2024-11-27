import 'package:betkom/Model/Splash.dart';
import 'package:betkom/Pages/Admin_Login.dart';
import 'package:betkom/Pages/Admin_Sign_Up.dart';
import 'package:betkom/Pages/CarDryCleanPage.dart';
import 'package:betkom/Pages/Electrical%20Appliances.dart';
import 'package:betkom/Pages/ElectricityPage.dart';
import 'package:betkom/Pages/InitialPage.dart';
import 'package:betkom/Pages/Plumbing.dart';
import 'package:betkom/Pages/UserPage.dart';
import 'package:betkom/Pages/User_Login.dart';
import 'package:betkom/Pages/User_Sign_Up.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
       home:SplashScreen(),
       routes: {
Admin_Sign_Up.id:(context)=>Admin_Sign_Up(),
Admin_Login.id:(context) => Admin_Login(),
User_Login.id:(context) => User_Login(),
User_Sign_Up.id:(context) => User_Sign_Up(),
UserPage.id:(context) => UserPage(),
PlumbingPage.id:(context)=>PlumbingPage(),
ElectricityPage.id:(context) => ElectricityPage(),
Electrical_Appliances.id:(context) => Electrical_Appliances(),
CarDryCleanPage.id:(context) => CarDryCleanPage()
},
initialRoute: InitialPage.id
    
       
    );
  }
}
