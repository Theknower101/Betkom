
import 'package:betkom/Constant.dart';
import 'package:flutter/material.dart';

class Card_Services_Category extends StatelessWidget {
  Card_Services_Category({required this.image,required this.desc,required this.onTap,required this.color});
 String image;
 Color color;
 String desc;
Function()onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child:  Container(
                height: 150,
                width: 100,
                child: Card(
                  elevation: 20,
                   color:color,
                  //  const Color.fromARGB(255, 136, 198, 249),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Image.asset(image,width: 100,height: 100,),
                      const SizedBox(
                        height: 10,
                         ),
                      Text(desc,style: TextStyle(fontFamily: kFontFamily,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ),
             
      );
    
  }
}
class Soon_Card_Services_Category extends StatelessWidget {
  Soon_Card_Services_Category({required this.image,required this.desc,required this.onTap,required this.color});
 String image;
 Color color;
 String desc;
Function()onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children:[ Container(
                height: 150,
                width: 100,
                child: Card(
                  elevation: 20,
                   color:color,
                  //  const Color.fromARGB(255, 136, 198, 249),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Image.asset(image,width: 100,height: 100,),
                      const SizedBox(
                        height: 10,
                         ),
                      Text(desc,style: TextStyle(fontFamily: kFontFamily,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ),
              Positioned(
              
                child:Container(
                  height: 25,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.amber
                  ),
                  child: Center(child: Text("Soon",style: TextStyle(fontFamily:kFontFamily,fontSize: 15 ),)),
                )
                 )
        ]
        
      ),
    );
  }
}
