import 'dart:ui';

import 'package:betkom/Constant.dart';
import 'package:betkom/Model/Button_Categories.dart';
import 'package:betkom/Model/Card_Categories.dart';
import 'package:betkom/Model/Services_Categories.dart';
import 'package:betkom/Pages/Admin_Login.dart';
import 'package:betkom/Pages/Admin_Sign_Up.dart';
import 'package:betkom/Pages/User_Login.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
InitialPage({super.key});
static String id="Initial_Page";
  final List<String> imgCountryList = [
'lib/Images/78969387_l_normal_none-1024x683-1.jpg',
'lib/Images/Building-maintenance.jpg',
'lib/Images/download.jfif',
'lib/Images/OIP (1).jfif',
'lib/Images/OIP.jfif'
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
               Colors.white,
             Colors.yellow
            ]),
          ),
        ),
        title: Center(
          child: Text(
            "Betkom",style:TextStyle(fontFamily: kFontFamily,color: Colors.black),
          ),
        ),
      ),
      body:Container(
        decoration: BoxDecoration(
          gradient:LinearGradient(colors: [
             const Color.fromARGB(173, 255, 235, 59),
             Colors.white
          ])
        ),
        child: ListView(
          children: [
        SizedBox(
          height: 20,
        ),
          Center(child: Text("Welcome to Betkom ",style: TextStyle(fontSize: 30,fontFamily: kFontFamily),)),
         const SizedBox(height: 20,),
            CarouselSlider(items:imgCountryList.map((item) => Container(child: Center(
              child: Image.asset(item,fit: BoxFit.cover,width:double.infinity ,
              height: 500,
              ),
              ),
              ),
              ).toList()
             , options:   CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
             
             )),
             const SizedBox(
              height: 40,
             ),
             Center(child: Text("Our services",style: TextStyle(fontSize: 20,fontFamily: kFontFamily),)),
             SizedBox(
              height: 20,
             ),
            Services_LogIn_Categories(image: "lib/Images/OIP__6_-removebg-preview.png",desc: "Plumbing",),
           const SizedBox(
              height: 20,
            ),
            Services_LogIn_Categories(image: "lib/Images/523-5231668_yellow-electricity-icon-clipart-electricity-computer-png-cartoon-removebg-preview.png",desc: "Electricity",),
            const SizedBox(
              height: 20,
            ),
            Services_LogIn_Categories(image: "lib/Images/download__2_-removebg-preview.png", desc: "Internet Fiber"),
            const SizedBox(
              height: 20,
            ),
             Services_LogIn_Categories(image: "lib/Images/OIP__7_-removebg-preview.png", desc: "Clothes Dry Clean"),
            const SizedBox(
              height: 20,
            ),
            Services_LogIn_Categories(image: "lib/Images/R-removebg-preview.png", desc: "Cars Dry clean"),
      
            const SizedBox(
              height: 20,
            ),
            Services_LogIn_Categories(image: "lib/Images/OIP__8_-removebg-preview.png", desc: "Air condition"),
      
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Button_Category(text: "Get Started", onTap: (){
                showDialog(context: context, builder: (context){
                   return AlertDialog(
                    content: Container(
                      height:300,
                      width: 100,
                      child: Column(
                        children: [
                          Text("Who are you ?",style: TextStyle(color:Colors.grey,fontSize: 20,fontFamily: kFontFamily),),
                          const SizedBox(
                            height: 20,
                          ),
                          const SizedBox(width: 60,),
                          Card_Categories(image: "lib/Images/R__1_-removebg-preview.png", major: "Admin", color: Colors.white, onTap: (){
                            Navigator.pushNamed(context, Admin_Login.id);
                          }, bgColors: Colors.orange),
                          const SizedBox(
                            height: 20,
                          ),
                           Card_Categories(image: "lib/Images/OIP__9_-removebg-preview.png", major: "User", color: Colors.white, onTap: (){
                            Navigator.pushNamed(context, User_Login.id);
                           }, bgColors: Colors.green),
      
                        ],
                      ),
                                      ),
                   );
                });
              }, colorButton: Colors.green, colorText: Colors.white, width: 20),
            ),
             Padding(
               padding: const EdgeInsets.only(left: 20,top: 40),
               child: Text("Why you should use this application",style: TextStyle(fontSize: 25,fontFamily: kFontFamily,color: Colors.black),),
             ),
             
      
             SizedBox(height: 20,),
             Row(
                    children: [
                     Services_Categories(image: 'lib/Images/Screenshot_2024-10-22_210730-removebg-preview.png', desc:'HIGHER STANDARDS' ),
                      const SizedBox(
                        width: 80,
                      ),
                      Services_Categories(image: 'lib/Images/OIP__3_-removebg-preview.png', desc:'LOW PRICE' ),
                       const SizedBox(
                        width: 80,
                      ),
              
                    ],
                  ),
                   Row(
                    children: [
                     Services_Categories(image: 'lib/Images/OIP__4_-removebg-preview.png', desc:'REDUCE TIME AND EFFORT ' ),
                      const SizedBox(
                        width: 60,
                      ),
                       
                    ],
                  ),
                  
          ],
        ),
      ),
    ) ;
  }
}