import 'package:betkom/Constant.dart';
import 'package:betkom/Model/Button_Categories.dart';
import 'package:betkom/Model/SnackBar_Categories.dart';
import 'package:betkom/Model/TextField_Categories.dart';
import 'package:betkom/Pages/UserPage.dart';
import 'package:betkom/Pages/User_Sign_Up.dart';
import 'package:flutter/material.dart';

class User_Login extends StatefulWidget {
 static String id="User_Login";

  @override
  State<User_Login> createState() => _User_LoginState();
}

class _User_LoginState extends State<User_Login> {
 GlobalKey<FormState>formKey=GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
             Colors.white,
            Colors.yellow,
    
            ]),
          ),
        ),
        title: Text(
          "Betkom",style:TextStyle(fontFamily: kFontFamily,color: Colors.black),
        ),
      ),
      body:Form(
        key:formKey ,
        child: Container(
         decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                const Color.fromARGB(173, 255, 235, 59),
               Colors.white
                ]),
              ),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 130,top: 100),
                    child: Text("Welcome Back User",style: TextStyle(fontSize: 20,fontFamily: kFontFamily),),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      height: 400,
                      width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child:ListView(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Center(child: Text("Log in",style: TextStyle(fontSize: 40,fontFamily: kFontFamily,color: Colors.black),)),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField_CategoryOnChanged(hintText: "Email", onChanged: (data){}, prefixIcon: Icon(Icons.person), obsecure: false, color: Colors.amber),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField_CategoryOnChanged(hintText: "Password", onChanged: (data){}, prefixIcon: Icon(Icons.lock), obsecure: true, color: Colors.amber),
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Button_Category(text: "Log in", onTap: (){
                             setState(() {
                                        
                                      });
                                          if(formKey.currentState!.validate()){
                                            try{
                                         Navigator.pushNamed(context, UserPage.id);

                                            }
                                            catch(e){
                                              showSnackBar(context, "Something went wrong");
                                            }
                                          }
                          }, colorButton: Colors.green, colorText: Colors.white, width: 40),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(child: 
                        GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, User_Sign_Up.id);
                          },
                          child: Text("Don't have an account",style: TextStyle(fontSize:20 ,fontFamily: kFontFamily),))),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(child: Text("Forget Password",style: TextStyle(fontSize: 20,fontFamily: kFontFamily),))
                      ],
                    ) ,
                    ),
                  ),
                ],
              ),
        ),
      ),
    );
  }
}