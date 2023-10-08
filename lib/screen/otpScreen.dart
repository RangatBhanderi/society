import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE4ECEB),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Forget password",
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
                hintText: 'Enter your mobile number',
                border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(30)), // Hide the default border
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(top: 2.h, right: 7.w),
              child: Text(
                "Resend OTP?",
                style: TextStyle(
                    color: Color(0xff0A1687),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w800),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Get.to(LoginScreen());
            },
            child: Container(
              margin: EdgeInsets.only(top: 2.h),
              height: 8.h,
              decoration: BoxDecoration(
                color: Color(0xffE4ECEB),
                image: DecorationImage(
                    image: AssetImage("assets/images/getStart.jpg")),
              ),
              width: 70.w,
              child: Center(
                child: Text("Send otp",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 12.sp,
                        color: Color(0xff6B9591))),
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
                hintText: 'Enter otp',

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
              margin: EdgeInsets.only(top: 2.h),
              height: 8.h,
              decoration: BoxDecoration(
                color: Color(0xffE4ECEB),
                image: DecorationImage(
                    image: AssetImage("assets/images/getStart.jpg")),
              ),
              width: 70.w,
              child: Center(
                child: Text("Submit",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 12.sp,
                        color: Color(0xff6B9591))),
              ),
            ),
          ),

          SizedBox(
            height: 2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w800),
              ),
              Text(
                "Sign up",
                style: TextStyle(
                    color: Color(0xff0A1687),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w800),
              ),
            ],
          ),
          Text(
            "•Does not sell or trade your data",
            style: TextStyle(
                color: Colors.black,
                fontSize: 12.sp,
                fontWeight: FontWeight.w800),
          ),
          Text(
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

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
//
// class OtpScreen extends StatefulWidget {
//   const OtpScreen({super.key});
//
//   @override
//   State<OtpScreen> createState() => _OtpScreenState();
// }
//
// class _OtpScreenState extends State<OtpScreen> {
//   String dropdownvalue = 'Relatives';
//   String deliveryItem = 'Swiggy';
//   TextEditingController login = TextEditingController();
//   String selectedValue = 'Swiggy'; // Default selected value
//
//   List<Map<String, dynamic>> dropdownItems = [
//     {'value': 'Swiggy', 'image': 'assets/images/swiggy.jpg'},
//     {'value': 'Zomato', 'image': 'assets/images/zomato.png'},
//     {'value': 'BlinkIt', 'image': 'assets/images/blinkit.jpg'},
//     // {'value': 'BlinkIt', 'image': 'assets/image3.png'},
//   ];
//
//   // List of items in our dropdown menu
//   var items = [
//     'Relatives',
//     'Delivery',
//     'Courier',
//     'Made workers',
//     'Other',
//   ];
//   var delivery = [
//     'Swiggy',
//     'Zomato',
//     'BlinkIt',
//   ];
//   String name = "";
//   String email = "";
//   String moNO = "";
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       appBar: AppBar(),
//       body: Container(
//         decoration: BoxDecoration(
//             gradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: [
//             Color(0xffc5dbde),
//             Color(0xffb269bf),
//           ],
//         )),
//         child: Column(
//           children: [
//             SizedBox(
//               height: 2.w,
//             ),
//             Padding(
//               padding: EdgeInsets.only(left: 4.w, right: 4.w),
//               child: TextFormField(
//                 keyboardType: TextInputType.visiblePassword,
//                 decoration: InputDecoration(
//                     prefixIcon: Icon(Icons.person),
//                     hintText: "Enter name",
//                     contentPadding: EdgeInsets.only(
//                       left: 10,
//                       top: 0,
//                       bottom: 0,
//                     ),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10.w))),
//                 validator: (val) {
//                   if (val.toString().isEmpty) {
//                     return "Enter password";
//                   }
//                 },
//               ),
//             ),
//             SizedBox(
//               height: 2.w,
//             ),
//             Padding(
//               padding: EdgeInsets.only(left: 4.w, right: 4.w),
//               child: TextFormField(
//                 keyboardType: TextInputType.number,
//                 decoration: InputDecoration(
//                     prefixIcon: Icon(Icons.phone_in_talk),
//                     hintText: "Enter mobile number",
//                     contentPadding: EdgeInsets.only(
//                       left: 10,
//                       top: 0,
//                       bottom: 0,
//                     ),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10.w))),
//                 validator: (val) {
//                   if (val.toString().isEmpty) {
//                     return "Enter password";
//                   }
//                 },
//               ),
//             ),
//             SizedBox(
//               height: 2.w,
//             ),
//             Padding(
//               padding: EdgeInsets.only(left: 4.w, right: 4.w),
//               child: TextFormField(
//                 keyboardType: TextInputType.visiblePassword,
//                 decoration: InputDecoration(
//                     prefixIcon: Icon(Icons.email),
//                     hintText: "Enter email id",
//                     contentPadding: EdgeInsets.only(
//                       left: 10,
//                       top: 0,
//                       bottom: 0,
//                     ),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10.w))),
//                 validator: (val) {
//                   if (val.toString().isEmpty) {
//                     return "Enter password";
//                   }
//                 },
//               ),
//             ),
//
//             SizedBox(
//               height: 6.w,
//             ),
//             Container(
//               margin: EdgeInsets.all(4.w),
//               height: 70,
//               width: 100.w,
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(2.w)),
//               child: DropdownButton(
//                 isExpanded: true,
//                 menuMaxHeight: 80,
//                 value: dropdownvalue,
//                 underline: SizedBox(),
//                 icon: Align(
//                     alignment: Alignment.centerRight,
//                     child: const Icon(Icons.keyboard_arrow_down)),
//                 items: items.map((String items) {
//                   return DropdownMenuItem(
//                     alignment: Alignment.center,
//                     value: items,
//                     child: Text(items),
//                   );
//                 }).toList(),
//                 onChanged: (String? newValue) {
//                   setState(() {
//                     dropdownvalue = newValue!;
//                   });
//                 },
//               ),
//             ),
//             SizedBox(height: 4.w,),
//             dropdownvalue == 'Delivery'
//                 ? Container(
//                     margin: EdgeInsets.all(4.w),
//                     height: 70,
//                     width: 100.w,
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(2.w)),
//                     child: DropdownButton<String>(
//                       underline: SizedBox(),
//                       icon: Align(
//                           alignment: Alignment.centerRight,
//                           child: const Icon(Icons.keyboard_arrow_down)),
//                       isExpanded: true,
//                       value: selectedValue,
//                       onChanged: (String? newValue) {
//                         setState(() {
//                           selectedValue = newValue!;
//                         });
//                       },
//                       items:
//                           dropdownItems.map<DropdownMenuItem<String>>((item) {
//                         return DropdownMenuItem<String>(
//                           alignment: Alignment.center,
//                           value: item['value'],
//                           child: Container(
//                             height: 70,
//                             width: 100.w,
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                               Image.asset(
//                                 item['image'],
//                                 height: 30,
//                                 width: 30,
//                                 fit: BoxFit.fill,
//                               ),
//                               SizedBox(width: 4.w,),
//                               Text(item['value']),
//                             ]),
//                           ),
//                         );
//                       }).toList(),
//                     ),
//                   )
//                 : SizedBox()
//           ],
//         ),
//       ),
//     );
//   }
// }
