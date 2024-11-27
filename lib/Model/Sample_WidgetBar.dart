import 'package:betkom/Constant.dart';
import 'package:betkom/Pages/CarDryCleanPage.dart';
import 'package:betkom/Pages/Electrical%20Appliances.dart';
import 'package:betkom/Pages/ElectricityPage.dart';
import 'package:betkom/Pages/OrderPage.dart';
import 'package:betkom/Model/ServicesCard_Categories.dart';
import 'package:betkom/Pages/Plumbing.dart';
import 'package:flutter/material.dart';

class SampleWidgetMainPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
       gradient: LinearGradient(colors: [
              const Color.fromARGB(173, 255, 235, 59),
             Colors.white
              ]),
      ),
      child: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(child: Text("What's your problem ? ",style: TextStyle(fontSize: 40,fontFamily: kFontFamily),)),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Card_Services_Category(image: "lib/Images/OIP__6_-removebg-preview.png", desc: "Plumbing", onTap: (){
                  Navigator.pushNamed(context, PlumbingPage.id);
                }, color: Colors.white38),
                const SizedBox(
                  width: 10,
                ),
                Card_Services_Category(image: "lib/Images/OIP__8_-removebg-preview.png", desc: "Electrical Devices", onTap: (){
                  Navigator.pushNamed(context, Electrical_Appliances.id);
                }, color: Colors.white38),

                 Card_Services_Category(image: "lib/Images/523-5231668_yellow-electricity-icon-clipart-electricity-computer-png-cartoon-removebg-preview.png", desc: "Electricity", onTap: (){
                  Navigator.pushNamed(context, ElectricityPage.id);
                 }, color: Colors.white38),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Card_Services_Category(image: "lib/Images/OIP__7_-removebg-preview.png", desc: "Clothes Dry Clean", onTap: (){}, color: Colors.white38),
                const SizedBox(
                  width: 10,
                ),
                 Card_Services_Category(image: "lib/Images/R-removebg-preview.png", desc: "Cars Dry Clean", onTap: (){
                  Navigator.pushNamed(context, CarDryCleanPage.id);
                 }, color: Colors.white38),
                const SizedBox(
                  width: 10,
                ),
                   Soon_Card_Services_Category(image: "lib/Images/download__2_-removebg-preview.png", desc: "Internet Fiber", onTap: (){}, color: Colors.white38),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class SampleWidgetMainPageOrderPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:OrderPage());
  }
}
class SampleWidgetMainPageApplicationsPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text('Applications Page'));
  }
}
class SampleWidgetMainPageSettingPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text('Setting  Page'));
  }
}
class SampleWidgetMainPageProfilePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text('Profile Page'));
  }
}

//
// Created by CodeWithFlexZ
// Tutorials on my YouTube
//
//! Instagram
//! @CodeWithFlexZ
//
//? GitHub
//? AmirBayat0
//
//* YouTube
//* Programming with FlexZ
//