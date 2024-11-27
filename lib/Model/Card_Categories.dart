import 'package:betkom/Constant.dart';
import 'package:flutter/material.dart';

class Card_Categories extends StatelessWidget {
 Card_Categories({required this.image,required this.major,required this.color,required this.onTap,required this.bgColors});
String image;
String major;
Color color;
Color bgColors;
Function()onTap;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
                      height: 100,
                      width: 100,
                      child: Card(
                        color: bgColors,
                        elevation: 10,
                        child: Column(
                          children: [
                            Image.asset(image,width: 60,height: 60,),
                           Text(major,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: kFontFamily),),
                          ],
                        ),
                      ),
                    ),
    );
  }
}