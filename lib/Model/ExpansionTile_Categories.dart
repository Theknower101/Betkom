import 'package:betkom/Constant.dart';
import 'package:flutter/material.dart';

class ExpansionTile_Categories extends StatelessWidget {
   ExpansionTile_Categories({required this.tileText,required this.desc});
String tileText;
String desc;
  @override
  Widget build(BuildContext context) {
    return    Column(
      children: [
         const SizedBox(
              height: 40,
             ),
        ExpansionTile(
              
                  iconColor: Colors.black,
                  textColor:Colors.black,
                  backgroundColor:Colors.white,
                  title: Text(tileText,style: TextStyle(fontFamily: kFontFamily,fontSize: 20),),
                 
                  children: [
                    ListTile(
                      title: Text(desc,style: TextStyle(fontFamily: kFontFamily),),
                    ),
                  ],
                ),
                 Divider(
              indent: 15,
              endIndent: 15,
              thickness: 1,
              color: Colors.black,
            ),
      ],
    );
         
  }
}
