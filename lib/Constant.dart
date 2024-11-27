import 'package:betkom/Model/Custom_App_Bar.dart';
import 'package:betkom/Model/Sample_WidgetBar.dart';
import 'package:flutter/material.dart';

const kFontFamily='Agdasima';
List<Widget> screens = [
 SampleWidgetMainPage(),
 SampleWidgetMainPageOrderPage(),
SampleWidgetMainPageSettingPage(),
SampleWidgetMainPageProfilePage()

];

double animatedPositionedLEftValue(int currentIndex) {
  switch (currentIndex) {
    case 0:
      return AppSizes.blockSizeHorizontal * 5.5;
    case 1:
      return AppSizes.blockSizeHorizontal * 22.5;
    case 2:
      return AppSizes.blockSizeHorizontal * 39.5;
    case 3:
      return AppSizes.blockSizeHorizontal * 56.5;
    case 4:
      return AppSizes.blockSizeHorizontal * 73.5;
    default:
      return 0;
  }

}
  final List<Color> gradient = [
  Colors.yellow.withOpacity(0.8),
  Colors.yellow.withOpacity(0.5),
  Colors.transparent
];