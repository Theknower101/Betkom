import 'package:betkom/Constant.dart';
import 'package:flutter/material.dart';

class TextField_CategoryOnChanged extends StatelessWidget {
  TextField_CategoryOnChanged({required this.hintText,required this.onChanged,@required this.prefixIcon,required this.obsecure,@required this.color,});
String ?hintText;
Icon?prefixIcon;
bool?obsecure;
Color ?color;
var controller;
Function(String)?onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
       
        obscureText: obsecure!,
         validator: (data){
          if(data!.isEmpty){
            return'Field is required';
          }
         },
         onChanged:onChanged ,
                    decoration: InputDecoration(
                      prefixIcon: prefixIcon,prefixIconColor: Colors.amber[300],
                      hintText:hintText,
                      hintStyle: TextStyle(color:color ,fontFamily: kFontFamily ),
                    ),
      ),
    );
  }
}
