import 'package:betkom/Constant.dart';
import 'package:flutter/material.dart';
class Services_Categories extends StatelessWidget {
  Services_Categories({required this.image,required this.desc});
   String image;
   String desc;
  @override
  Widget build(BuildContext context) {
    return Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(image,width: 100,height: 100,),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,top: 20,bottom: 50),
                          child: Text(desc,style: TextStyle(color: Colors.black,fontFamily: kFontFamily,fontSize: 15),),
                        ),
                      ],
                    );
  }

}
class Services_LogIn_Categories extends StatelessWidget {
  String ?image;
  String ?desc;
  Services_LogIn_Categories({required this.image,required this.desc});
 
  @override
  Widget build(BuildContext context) {
    return   Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(image!),
                    Text(desc!,style: TextStyle(fontSize: 30,fontFamily: kFontFamily),),
                    
                  ],
                ),
              ),
            ),
          );
  }
}