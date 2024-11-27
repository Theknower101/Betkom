import 'package:betkom/Constant.dart';
import 'package:flutter/material.dart';
var adminMajor;
class DropDownMenuAdmin_Category extends StatefulWidget {
   DropDownMenuAdmin_Category();
  @override
  State<DropDownMenuAdmin_Category> createState() => _DropDownMenuAdmin_CategoryState();
}
class _DropDownMenuAdmin_CategoryState extends State<DropDownMenuAdmin_Category> {
  String value='Plumbing';
  @override
  Widget build(BuildContext context) {
    return   DropdownButton<String>(
      
                value: value, 
                onChanged: (newValue) {
                  setState(() {
                    value = newValue!; 
                    adminMajor=value;
                  });
                },
                items: [
                  DropdownMenuItem<String>(
                    
                    child: Text('Plumbing',style: TextStyle(fontFamily: kFontFamily),),
                    value: 'Plumbing',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('Electricity',style: TextStyle(fontFamily: kFontFamily),),
                    value: 'Electricity',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('Clothes DryClean',style: TextStyle(fontFamily: kFontFamily),),
                    value: 'Clothes DryClean',
                  ),
                   DropdownMenuItem<String>(
                    child: Text('Car dry clean',style: TextStyle(fontFamily: kFontFamily),),
                    value: 'Car dry clean',
                  ),
                 
                     DropdownMenuItem<String>(
                    child: Text('Internet Fiber',style: TextStyle(fontFamily: kFontFamily),),
                    value: 'Internet Fiber',
                  ),
                  
                    
                ],
              );
  }
}
var nationality;
class DropDownMenuNationality_Category extends StatefulWidget {
   DropDownMenuNationality_Category();
  @override
  State<DropDownMenuNationality_Category> createState() => _DropDownMenuNationality_CategoryState();
}
class _DropDownMenuNationality_CategoryState extends State<DropDownMenuNationality_Category> {
  String value='Amman';
  @override
  Widget build(BuildContext context) {
    return   DropdownButton<String>(
      
                value: value, 
                onChanged: (newValue) {
                  setState(() {
                    value = newValue!; 
                    nationality=value;
                  });
                },
                items: [
                  DropdownMenuItem<String>(
                    
                    child: Text('Amman',style: TextStyle(fontFamily: kFontFamily),),
                    value: 'Amman',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('Al Zaraqa',style: TextStyle(fontFamily: kFontFamily),),
                    value: 'Al Zaraqa',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('Al Mafraq',style: TextStyle(fontFamily: kFontFamily),),
                    value: 'Al Mafraq',
                  ),
                   DropdownMenuItem<String>(
                    child: Text('Irbid',style: TextStyle(fontFamily: kFontFamily),),
                    value: 'Irbid',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('Al Ramtha',style: TextStyle(fontFamily: kFontFamily),),
                    value: 'Al Ramtha',
                  ),
                     DropdownMenuItem<String>(
                    child: Text('Salt',style: TextStyle(fontFamily: kFontFamily),),
                    value: 'Salt',
                  ),
                  
                    DropdownMenuItem<String>(
                    child: Text('Maan',style: TextStyle(fontFamily: kFontFamily),),
                    value: 'Maan',
                  ),
                     DropdownMenuItem<String>(
                    child: Text('Aqaba',style: TextStyle(fontFamily: kFontFamily),),
                    value: 'Aqaba',
                  ),
                  //  DropdownMenuItem<String>(
                  //   child: Text('Medical center',style: TextStyle(fontFamily: kFontFamily),),
                  //   value: 'Medical center',
                  // ),
                  //   DropdownMenuItem<String>(
                  //   child: Text('Public Relations Department',style: TextStyle(fontFamily: kFontFamily),),
                  //   value: 'Public Relations Department',
                  // ),
                  //  DropdownMenuItem<String>(
                  //   child: Text('Flag Service',style: TextStyle(fontFamily: kFontFamily),),
                  //   value: 'Flag service',
                  // ),
                ],
              );
  }
}
var nationalityUser;
class DropDownMenuNationalityUser_Category extends StatefulWidget {
  @override
  State<DropDownMenuNationalityUser_Category> createState() => _DropDownMenuNationalityUser_CategoryState();
}
class _DropDownMenuNationalityUser_CategoryState extends State<DropDownMenuNationalityUser_Category> {
  String value='Amman';
  @override
  Widget build(BuildContext context) {
    return   DropdownButton<String>(
      
                value: value, 
                onChanged: (newValue) {
                  setState(() {
                    value = newValue!; 
                    nationality=value;
                  });
                },
                items: [
                  DropdownMenuItem<String>(
                    
                    child: Text('Amman',style: TextStyle(fontFamily: kFontFamily),),
                    value: 'Amman',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('Al Zaraqa',style: TextStyle(fontFamily: kFontFamily),),
                    value: 'Al Zaraqa',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('Al Mafraq',style: TextStyle(fontFamily: kFontFamily),),
                    value: 'Al Mafraq',
                  ),
                   DropdownMenuItem<String>(
                    child: Text('Irbid',style: TextStyle(fontFamily: kFontFamily),),
                    value: 'Irbid',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('Al Ramtha',style: TextStyle(fontFamily: kFontFamily),),
                    value: 'Al Ramtha',
                  ),
                     DropdownMenuItem<String>(
                    child: Text('Salt',style: TextStyle(fontFamily: kFontFamily),),
                    value: 'Salt',
                  ),
                  
                    DropdownMenuItem<String>(
                    child: Text('Maan',style: TextStyle(fontFamily: kFontFamily),),
                    value: 'Maan',
                  ),
                     DropdownMenuItem<String>(
                    child: Text('Aqaba',style: TextStyle(fontFamily: kFontFamily),),
                    value: 'Aqaba',
                  ),
                  //  DropdownMenuItem<String>(
                  //   child: Text('Medical center',style: TextStyle(fontFamily: kFontFamily),),
                  //   value: 'Medical center',
                  // ),
                  //   DropdownMenuItem<String>(
                  //   child: Text('Public Relations Department',style: TextStyle(fontFamily: kFontFamily),),
                  //   value: 'Public Relations Department',
                  // ),
                  //  DropdownMenuItem<String>(
                  //   child: Text('Flag Service',style: TextStyle(fontFamily: kFontFamily),),
                  //   value: 'Flag service',
                  // ),
                ],
              );
  }
}
var electricityProblem;
class DropDownMenuElectricityService_Category extends StatefulWidget {
  @override
  State<DropDownMenuElectricityService_Category> createState() => _DropDownMenuElectricityService_CategoryState();
}
class _DropDownMenuElectricityService_CategoryState extends State<DropDownMenuElectricityService_Category> {
  String value='Fridge';
  @override
  Widget build(BuildContext context) {
    return   DropdownButton<String>(
      
                value: value, 
                onChanged: (newValue) {
                  setState(() {
                    value = newValue!; 
                    nationality=value;
                  });
                },
                items: [
                  DropdownMenuItem<String>(
                    
                    child: Text('Fridge',style: TextStyle(fontFamily: kFontFamily),),
                    value: 'Fridge',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('Cooker',style: TextStyle(fontFamily: kFontFamily),),
                    value: 'Cooker',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('Air condition',style: TextStyle(fontFamily: kFontFamily),),
                    value: 'Air condition',
                  ),
                   DropdownMenuItem<String>(
                    child: Text('Microwave',style: TextStyle(fontFamily: kFontFamily),),
                    value: 'Microwave',
                  ),
                   DropdownMenuItem<String>(
                    child: Text('Airfryer',style: TextStyle(fontFamily: kFontFamily),),
                    value: 'Airfryer',
                   ),
                  DropdownMenuItem<String>(
                    child: Text('TV',style: TextStyle(fontFamily: kFontFamily),),
                    value: 'TV',
                  ),
                  
                   DropdownMenuItem<String>(
                    child: Text('Washing machine',style: TextStyle(fontFamily: kFontFamily),),
                    value: 'Washing machine',
                  ),
                    DropdownMenuItem<String>(
                    child: Text('Dishwasher',style: TextStyle(fontFamily: kFontFamily),),
                    value: 'Dishwasher',
                  ),
                   DropdownMenuItem<String>(
                    child: Text('Cooler',style: TextStyle(fontFamily: kFontFamily),),
                    value: 'Cooler',
                  ),
                   DropdownMenuItem<String>(
                    child: Text('Dryer machine',style: TextStyle(fontFamily: kFontFamily),),
                    value: 'Dryer machine',
                  ),
                   DropdownMenuItem<String>(
                    child: Text('Other',style: TextStyle(fontFamily: kFontFamily),),
                    value: 'Other',
                   )
                ],
              );
  }
}