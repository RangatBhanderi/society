import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

class CommonWidget {
  Widget commonText(
      String text, double fontSize, FontWeight fontWeight, Color color) {
    return Text(
      text,
      style:
          TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color),
    );
  }

  Widget buttonTheme(
    double height,
    double width,
    Color color,
      String title,
      Color textColor
  ) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.w),
      height: height,
      width: 96.w,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(12.w)),
      child: Center(child: CommonWidget().commonText(title, 12.sp,FontWeight.bold, textColor)),
    );
  }
}
