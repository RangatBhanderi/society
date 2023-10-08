import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:society/screen/loginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE4ECEB),
      body: Container(
        height: 100.h,
        width: 100.w,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/Bg.png",
                ),
                fit: BoxFit.fill)),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Improve Your Family's\nSafety",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 12.sp,
                        color: Color(0xff6B9591))),
                SizedBox(
                  height: 2.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: SvgPicture.asset(
                    "assets/images/family.svg",
                    height: 60.h,
                    width: 10.w,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text("Ensure only verified & approved\n visitors enter only",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 12.sp,
                        color: Color(0xff6B9591))),
                GestureDetector(
                  onTap: () {
                    Get.to(LoginScreen());
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 6.h),
                    height: 8.h,
                    decoration: BoxDecoration(
                      color: Color(0xffE4ECEB),
                      image: DecorationImage(
                          image: AssetImage("assets/images/getStart.jpg")),
                    ),
                    width: 70.w,
                    child: Center(
                      child: Text("Get Started",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 12.sp,
                              color: Color(0xff6B9591))),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
