import 'package:betkom/Model/AppBar_FinalView.dart';
import 'package:flutter/material.dart';
class UserPage extends StatefulWidget {
  static String id="UserPage";

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: FinalView(),
    );
  }
}