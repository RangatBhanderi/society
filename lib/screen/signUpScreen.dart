import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE4ECEB),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome!",
            style: TextStyle(
                color: Color(0xff6B9591),
                fontSize: 12.sp,
                fontWeight: FontWeight.w800),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 2.h),
            child: TextFormField(
              // inputFormatters: [maskFormatter],
              style: TextStyle(color: Colors.white),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                contentPadding:
                EdgeInsets.symmetric(vertical: 1, horizontal: 20),

                hintText: 'Enter your name',
                border: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.circular(30)), // Hide the default border
              ),
            ),
          ),   Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 2.h),
            child: TextFormField(
              // inputFormatters: [maskFormatter],
              style: TextStyle(color: Colors.white),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                contentPadding:
                EdgeInsets.symmetric(vertical: 1, horizontal: 20),

                hintText: 'Enter your mobile number',
                border: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.circular(30)), // Hide the default border
              ),
            ),
          ),   Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 2.h),
            child: TextFormField(
              // inputFormatters: [maskFormatter],
              style: TextStyle(color: Colors.white),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                contentPadding:
                EdgeInsets.symmetric(vertical: 1, horizontal: 20),

                hintText: 'Enter your email id',
                border: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.circular(30)), // Hide the default border
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.h, left: 10.w, right: 10.w),
            child: TextFormField(
              // inputFormatters: [maskFormatter],
              style: TextStyle(color: Colors.white),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                contentPadding:
                EdgeInsets.symmetric(vertical: 1, horizontal: 20),
                hintText: 'Enter your password',

                border: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.circular(30)), // Hide the default border
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Get.to(LoginScreen());
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
                child: Text("Sign up",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 12.sp,
                        color: Color(0xff6B9591))),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w800),
              ),
              Text(
                "Login in",
                style: TextStyle(
                    color: Color(0xff0A1687),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w800),
              ),
            ],
          ),

          SizedBox(
            height: 2.h,
          ),


          Text(
            "•Does not sell or trade your data",
            style: TextStyle(
                color: Colors.black,
                fontSize: 12.sp,
                fontWeight: FontWeight.w800),
          ), Text(
            "•Encrypt and secures your data",
            style: TextStyle(
                color: Colors.black,
                fontSize: 12.sp,
                fontWeight: FontWeight.w800),
          ),
          Text(
            "Privacy policy\nTerms&Conditions",
            style: TextStyle(
                color: Color(0xff0A1687),
                fontSize: 12.sp,
                fontWeight: FontWeight.w800),
          ),
        ],
      ),
    );
  }
}
