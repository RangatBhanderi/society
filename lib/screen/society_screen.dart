import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../utils/commonWidget.dart';
import 'flatOwnerScreen.dart';

class SocietyScreen extends StatefulWidget {
  const SocietyScreen({super.key});

  @override
  State<SocietyScreen> createState() => _SocietyScreenState();
}

class _SocietyScreenState extends State<SocietyScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController societyName = TextEditingController();
  TextEditingController societyAdd = TextEditingController();
  TextEditingController chairmanName = TextEditingController();
  TextEditingController mobileNo = TextEditingController();
  TextEditingController emailId = TextEditingController();
  TextEditingController alternateNo = TextEditingController();
  TextEditingController totalBlock = TextEditingController();
  TextEditingController totalFlat = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xffc5dbde),
                  Color(0xffb269bf),
                ],
              )),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(4.w),
                    child: TextFormField(
                      controller: societyName,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: "Society Name",
                          prefixIcon: Icon(Icons.apartment),
                          contentPadding: EdgeInsets.only(
                            left: 10,
                            right: 0,
                            top: 0,
                            bottom: 0,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.w))),
                      validator: (val) {
                        if (val.toString().isEmpty) {
                          return "Enter society name";
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.w),
                    child: TextFormField(
                      controller: societyAdd,
                      keyboardType: TextInputType.text,

                      decoration: InputDecoration(
                          hintText: "Society address",
                          prefixIcon: Icon(Icons.home),
                          contentPadding: EdgeInsets.only(
                            left: 10,
                            right: 0,
                            top: 0,
                            bottom: 0,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.w))),
                      validator: (val) {
                        if (val.toString().isEmpty) {
                          return "Enter Society address";
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.w),
                    child: TextFormField(
                      controller: chairmanName,
                      keyboardType: TextInputType.text,

                      decoration: InputDecoration(
                          hintText: "Enter chairman name",
                          prefixIcon: Icon(Icons.accessibility_new),
                          contentPadding: EdgeInsets.only(
                            left: 10,
                            right: 0,
                            top: 0,
                            bottom: 0,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.w))),
                      validator: (val) {
                        if (val.toString().isEmpty) {
                          return "Enter chairman name";
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.w),
                    child: TextFormField(
                      controller: mobileNo,
                      keyboardType: TextInputType.phone,

                      decoration: InputDecoration(
                          hintText: "Enter mo no",
                          prefixIcon: Icon(Icons.dialpad),
                          contentPadding: EdgeInsets.only(
                            left: 10,
                            right: 0,
                            top: 0,
                            bottom: 0,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.w))),
                      validator: (val) {
                        if (val.toString().isEmpty) {
                          return "Enter Mobile Number";
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.w),
                    child: TextFormField(
                      controller: emailId,
                      keyboardType: TextInputType.text,

                      decoration: InputDecoration(
                          hintText: "Enter email id",
                          prefixIcon: Icon(Icons.mail),
                          contentPadding: EdgeInsets.only(
                            left: 10,
                            right: 0,
                            top: 0,
                            bottom: 0,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.w))),
                      validator: (val) {
                        if (val.toString().isEmpty) {
                          return "Enter email id";
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.w),
                    child: TextFormField(
                      controller: alternateNo,
                      keyboardType: TextInputType.number,

                      decoration: InputDecoration(
                          hintText: "Enter alternet mobile number",
                          prefixIcon: Icon(Icons.call),
                          contentPadding: EdgeInsets.only(
                            left: 10,
                            right: 0,
                            top: 0,
                            bottom: 0,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.w))),
                      validator: (val) {
                        if (val.toString().isEmpty) {
                          return "Enter alternate mobile number";
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.w),
                    child: TextFormField(
                      controller: totalBlock,
                      keyboardType: TextInputType.number,

                      decoration: InputDecoration(
                          hintText: "Enter total block",
                          prefixIcon: Icon(Icons.domain),
                          contentPadding: EdgeInsets.only(
                            left: 10,
                            right: 0,
                            top: 0,
                            bottom: 0,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.w))),
                      validator: (val) {
                        if (val.toString().isEmpty) {
                          return "Enter total block";
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.w),
                    child: TextFormField(
                      controller: totalFlat,
                      keyboardType: TextInputType.number,

                      decoration: InputDecoration(
                          hintText: "Enter total flat",
                          prefixIcon: Icon(Icons.signpost),
                          contentPadding: EdgeInsets.only(
                            left: 10,
                            right: 0,
                            top: 0,
                            bottom: 0,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.w))),
                      validator: (val) {
                        if (val.toString().isEmpty) {
                          return "Enter total flat";
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 12.w,
                  ),
                  SizedBox(
                    height: 8.w,
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          width: 96.w,
          child: FloatingActionButton.extended(
            backgroundColor: Colors.deepPurple,
            onPressed: () {
              Get.to(FlatOwnerScreen());
              if (formKey.currentState!.validate()) {}
            },
            label: CommonWidget().buttonTheme(
                12.w, 100.w, Colors.deepPurple, "Submit", Colors.white),
          ),
        ));
  }
}
