// import 'dart:io';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_downloader/flutter_downloader.dart';
// import 'package:get/get.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:sizer/sizer.dart';
// import 'package:society/screen/society_screen.dart';
//
// import '../utils/commonWidget.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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

                hintText: 'Enter your user name',
                border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(30)), // Hide the default border
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.h, left: 10.w, right: 10.w),
            child: TextFormField(
              // inputFormatters: [maskFormatter],
              style: TextStyle(color: Colors.white),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 1, horizontal: 20),
                hintText: 'Enter your user password',

                border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(30)), // Hide the default border
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(top: 4.h, right: 7.w),
              child: Text(
                "Forget Password ?",
                style: TextStyle(
                    color: Color(0xff0A1687),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w800),
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

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});
//
//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<LoginScreen> {
//   final formKey = GlobalKey<FormState>();
//   TextEditingController login = TextEditingController();
//   TextEditingController password = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         resizeToAvoidBottomInset: true,
//         body: SingleChildScrollView(
//           child: Container(
//               height: 100.h,
//               width: 100.w,
//               // decoration: const BoxDecoration(
//               //     gradient: LinearGradient(
//               //   begin: Alignment.topRight,
//               //   end: Alignment.bottomLeft,
//               //   colors: [
//               //     Colors.orange,
//               //     Colors.deepPurple,
//               //   ],
//               // )),
//               child: Form(
//                 key: formKey,
//                 child: Container(
//                   decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                     colors: [
//                       Color(0xffc5dbde),
//                       Color(0xffb269bf),
//                     ],
//                   )),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                         margin: EdgeInsets.only(left: 4.w, right: 4.w),
//                         padding: EdgeInsets.symmetric(vertical: 8.w),
//                         // decoration: BoxDecoration(
//                         //     color: Colors.white,
//                         //     boxShadow: [BoxShadow(
//                         //       spreadRadius: 1,
//                         //       blurRadius: 2,
//                         //     )],
//                         //     borderRadius: BorderRadius.circular(2.w)),
//                         child: Column(
//                           children: [
//                             CommonWidget().commonText(
//                                 "LogIn", 16.sp, FontWeight.w800, Colors.black),
//                             SizedBox(
//                               height: 7.w,
//                             ),
//                             Padding(
//                               padding: EdgeInsets.only(left: 4.w, right: 4.w),
//                               child: TextFormField(
//                                 controller: login,
//                                 keyboardType: TextInputType.emailAddress,
//                                 decoration: InputDecoration(
//                                     hintText: "Enter username",
//                                     prefixIcon: Icon(Icons.person_outline),
//                                     contentPadding: EdgeInsets.only(
//                                       left: 10,
//                                       right: 0,
//                                       top: 0,
//                                       bottom: 0,
//                                     ),
//                                     border: OutlineInputBorder(
//                                         borderRadius:
//                                             BorderRadius.circular(10.w))),
//                                 validator: (val) {
//                                   if (val.toString().isEmpty) {
//                                     return "Enter username";
//                                   }
//                                 },
//                               ),
//                             ),
//                             SizedBox(
//                               height: 2.w,
//                             ),
//                             Padding(
//                               padding: EdgeInsets.only(left: 4.w, right: 4.w),
//                               child: TextFormField(
//                                 controller: password,
//                                 keyboardType: TextInputType.visiblePassword,
//                                 decoration: InputDecoration(
//                                     prefixIcon: Icon(Icons.key),
//                                     hintText: "Enter password",
//                                     contentPadding: EdgeInsets.only(
//                                       left: 10,
//                                       top: 0,
//                                       bottom: 0,
//                                     ),
//                                     border: OutlineInputBorder(
//                                         borderRadius:
//                                             BorderRadius.circular(10.w))),
//                                 validator: (val) {
//                                   if (val.toString().isEmpty) {
//                                     return "Enter password";
//                                   }
//                                 },
//                               ),
//                             ),
//                             SizedBox(
//                               height: 2.w,
//                             ),
//                             SizedBox(
//                               height: 4.w,
//                             ),
//                             GestureDetector(
//                               onTap: () async {
//                                 Get.to(SocietyScreen());
//                                 // final Directory tempDir =
//                                 //     await getTemporaryDirectory();
//                                 //
//                                 // final Directory appDocumentsDir =
//                                 //     await getApplicationDocumentsDirectory();
//                                 //
//                                 // final Directory? downloadsDir =
//                                 //     await getDownloadsDirectory();
//                                 // new Directory(
//                                 //         '/storage/emulated/0/Download/YourfolderName')
//                                 //     .create()
//                                 //     .then((Directory directory) {
//                                 //   print(directory.path);
//                                 // });
//                                 // try {
//                                 //   await FlutterDownloader.enqueue(
//                                 //     url:
//                                 //         'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
//                                 //     savedDir:
//                                 //         '/storage/emulated/0/Download/YourfolderName',
//                                 //     showNotification: true,
//                                 //     // show download progress in status bar (for Android)
//                                 //     openFileFromNotification:
//                                 //         true, // click on notification to open downloaded file (for Android)
//                                 //   );
//                                 //   ScaffoldMessenger.of(context).showSnackBar(
//                                 //       const SnackBar(
//                                 //           content: Text("This Snack bar")));
//                                 // } catch (e) {
//                                 //   print(e);
//                                 //   print("eerrooorrrr");
//                                 // }
//                                 // // print(taskId);
//                                 // // downloadFile('https://www.africau.edu/images/default/sample.pdf','mypdffile','/storage/emulated/0/YourfolderName11');
//                                 // if (formKey.currentState!.validate()) {}
//                                 // _downloadFile(
//                                 //     'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
//                                 //     'video');
//                               },
//                               child: CommonWidget().buttonTheme(12.w, 100.w,
//                                   Colors.deepPurple, "Login", Colors.white),
//                             )
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               )),
//         ));
//   }
//
//   HttpClient httpClient = new HttpClient();
//
//   Future<File> _downloadFile(String url, String filename) async {
//     var request = await httpClient.getUrl(Uri.parse(url));
//     var response = await request.close();
//     var bytes = await consolidateHttpClientResponseBytes(response);
//     String dir = '/storage/emulated/0/YourfolderName11';
//     File file = new File('$dir/$filename.mp4');
//     print(file);
//     await file.writeAsBytes(bytes);
//     return file;
//   }
// }
