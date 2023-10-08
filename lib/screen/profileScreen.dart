import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
        title: Text(
          "Profile",
          style: TextStyle(
              color: Colors.black,
              fontSize: 12.sp,
              fontWeight: FontWeight.w600),
        ),
        backgroundColor: Color(0xffD4F1F4),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 5.w, right: 5.w, top: 5.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(bottom: 5.w),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xffD4F1F4),width: 5)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Color(0xffD4F1F4))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Text(
                  "Name",
                  style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Padding(
              padding: EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 8),
              child: Text(
                "User Name",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12.sp),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 8),
              width: 100.w,
              height: 1.5,
              color: Color(0xffD4F1F4),
            ),
            SizedBox(
              height: 5.w,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Color(0xffD4F1F4))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Text(
                  "Mobile Number",
                  style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Padding(
              padding: EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 8),
              child: Text(
                "9909912345",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12.sp),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 8),
              width: 100.w,
              height: 1.5,
              color: Color(0xffD4F1F4),
            ),
            SizedBox(
              height: 5.w,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Color(0xffD4F1F4))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Text(
                  "Address",
                  style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Padding(
              padding: EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 8),
              child: Text(
                "Near address",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12.sp),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 8),
              width: 100.w,
              height: 1.5,
              color: Color(0xffD4F1F4),
            ),
            SizedBox(
              height: 5.w,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Color(0xffD4F1F4))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Text(
                  "Email",
                  style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Padding(
              padding: EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 8),
              child: Text(
                "abc@gmail.com",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12.sp),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 8),
              width: 100.w,
              height: 1.5,
              color: Color(0xffD4F1F4),
            ),
          ],
        ),
      ),
    );
  }
}
