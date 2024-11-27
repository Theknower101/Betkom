import 'package:betkom/Constant.dart';
import 'package:betkom/Model/Button_Categories.dart';
import 'package:betkom/Model/DropDownMenu_Categories.dart';
import 'package:betkom/Model/TextField_Categories.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class ElectricityPage extends StatefulWidget {
  static String id="Electricity_Page";

  @override
  State<ElectricityPage> createState() => _ElectricityPageState();
}

class _ElectricityPageState extends State<ElectricityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back,color: Colors.black)),
        centerTitle: true,
        title: Text("Electricity",style: TextStyle(fontFamily: kFontFamily,fontSize: 20,color: Colors.black),),
          flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
             Colors.white,
            Colors.yellow,
    
            ]),
          ),
        ),
      ),
      body:  Container(
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
                Center(child: Text("Please fill the Form",style: TextStyle(fontFamily: kFontFamily,fontSize: 40),)),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    height: 450,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.amber[200],
                    ),
                    child: ListView(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,bottom: 10,top: 10),
                          child: Text("Problem Description :",style: TextStyle(fontFamily: kFontFamily,fontSize: 20),),
                        ),
                        
                        TextField_CategoryOnChanged(hintText: "Description", onChanged: (data){}, obsecure: false, color: Colors.grey),
                       
                        Row(
                          children: [
                           Text("*",style: TextStyle(color: Colors.red,fontFamily: kFontFamily,fontSize: 20),),
                            Padding(
                              padding: const EdgeInsets.only(top: 20,left:10 ),
                              child: Flexible(child: Text("Address :",style: TextStyle(fontFamily: kFontFamily,fontSize: 20),)),
                            ),
                            Flexible(child: TextField_CategoryOnChanged(hintText: "address", onChanged:(data){}, obsecure: false, color: Colors.grey)),
                          ],
                        ),
                            Row(
                          children: [
                            
                          Text("*",style: TextStyle(color: Colors.red,fontFamily: kFontFamily,fontSize: 20),),
                            Padding(
                              padding: const EdgeInsets.only(top: 20,left:10 ),
                              child: Flexible(child: Text("Street :",style: TextStyle(fontFamily: kFontFamily,fontSize: 20),)),
                            ),
                            Flexible(child: TextField_CategoryOnChanged(hintText: "Street", onChanged:(data){}, obsecure: false, color: Colors.grey)),
                          ],
                        ),
                         Row(
                          children: [
                            
                          Text("*",style: TextStyle(color: Colors.red,fontFamily: kFontFamily,fontSize: 20),),
                            Padding(
                              padding: const EdgeInsets.only(top: 20,left:10 ),
                              child: Flexible(child: Text("Phone Number :",style: TextStyle(fontFamily: kFontFamily,fontSize: 20),)),
                            ),
                            Flexible(child: TextField_CategoryOnChanged(hintText: "Phone", onChanged:(data){}, obsecure: false, color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            
                          Text("*",style: TextStyle(color: Colors.red,fontFamily: kFontFamily,fontSize: 20),),
                            Padding(
                              padding: const EdgeInsets.only(top: 20,left:10 ),
                              child: Flexible(child: Text("Determine your location :",style: TextStyle(fontFamily: kFontFamily,fontSize: 20),)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Image.asset("lib/Images/pngtree-location-pin-icon-with-map-png-image_7949099-removebg-preview.png",width: 90,height: 90,),
                         Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          child: Button_Category(text: "Submit", onTap: (){
                            showDialog(context: context, builder: (Context){
                             return AlertDialog(
                              content: Container(
                                height:300,
                                width: 100,
                                child: ListView(
                                  children: [
                                    const SizedBox(
                                      height: 80,
                                    ),
                                    Center(
                                      child: Text("Reserve time :",style:TextStyle(
                                        fontFamily: kFontFamily,
                                        fontSize: 20
                                      ) ,),
                                    ),
                                   Time_Date_Picker(),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Button_Category(text: "Confirm", onTap: (){}, colorButton:Colors.green, colorText: Colors.white, width: 50)
                                  ],
                                )),
                             );

                            }
                            );
                          }, colorButton: Colors.amber, colorText: Colors.white, width: 80),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
      ),
    );
  }
}