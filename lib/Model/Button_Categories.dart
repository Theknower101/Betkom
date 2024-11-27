import 'package:betkom/Constant.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button_Category extends StatelessWidget {
  Button_Category({required this.text,required this.onTap,required this.colorButton,required this.colorText,required this.width});
String ?text;
VoidCallback? onTap;
Color ?colorButton;
Color?colorText;
double ?width;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap:onTap ,
      child: Container(
              height: 40,
              width: width!,
             
              decoration: BoxDecoration(
                 color:colorButton ,
                borderRadius: BorderRadius.circular(20)
              ),
              
               child: Center(
            child: Text(text!,
            
            style: TextStyle(fontSize: 20,
            color: colorText,
            fontFamily: kFontFamily
            ),
            ),
               ),
           ),
    );
  }
}
class Time_Date_Picker extends StatefulWidget {
  const Time_Date_Picker({super.key});

  @override
  State<Time_Date_Picker> createState() => _Time_Date_PickerState();
}

class _Time_Date_PickerState extends State<Time_Date_Picker> {
    DateTime date=DateTime.now();

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(onPressed: ()async{
                                    DateTime ? newDate=await  showDatePicker(context: context, initialDate: date, firstDate: DateTime(2024), lastDate: DateTime(2025));
                                    if (newDate==null) return;
                                    setState(() {
                                      date=newDate;
                                    });
                                  TimeOfDay ? newTime=await  showTimePicker(context: context, initialTime: TimeOfDay(hour: date.hour, minute: date.minute));
                                  final newDateTime=DateTime(
                                    newDate.year,
                                    newDate.month,
                                    newDate.day,
                                    newDate.hour,
                                    newDate.minute
                                  );
                                  if (newTime==null) return ;
                                  setState(() {
                                      date=newDateTime;
                                    });
                                    }, child:Text("Select the Date and time",style: TextStyle(fontFamily: kFontFamily),));
  }
}