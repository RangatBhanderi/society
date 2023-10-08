import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:sizer/sizer.dart';
import 'package:society/drawerWithController.dart';

class DrawerWithScreen extends StatefulWidget {
  const DrawerWithScreen({super.key});

  @override
  State<DrawerWithScreen> createState() => _DrawerWithScreenState();
}

class _DrawerWithScreenState extends State<DrawerWithScreen> {
  DrawerWithController drawerWithController = Get.put(DrawerWithController());
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  var maskFormatter = new MaskTextInputFormatter(
      mask: '##/##/####',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
  var time = new MaskTextInputFormatter(
      mask: '##:##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  @override
  Widget build(BuildContext context) {
    bool keyboardIsOpened = MediaQuery.of(context).viewInsets.bottom != 0.0;

    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: true,
      drawer: Drawer(
        width: 60.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.w),
              child: Column(
                children: [
                  Text(
                    "Society Register",
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Society Register",
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Society Register",
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Society Register",
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                _scaffoldKey.currentState!.openDrawer();
              },
              child: Stack(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.menu_outlined,
                        size: 20,
                      ),
                    ),
                  ),
                  Positioned(
                      right: 2,
                      top: 5,
                      child: Container(
                        height: 20,
                        width: 30,
                        child: Center(
                          child: Text(
                            "Menu",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xff544f4e),
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "Society name",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        actions: [
          Icon(
            Icons.notifications_active_sharp,
            color: Colors.black26,
          ),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: EdgeInsets.only(top: 6),
            child: Stack(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      color: Color(0xffa6b8ba), shape: BoxShape.circle),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        color: Colors.black, shape: BoxShape.circle),
                    child: Center(
                      child: Text(
                        "0",
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Container(
        height: 100.h,
        width: 100.w,
        child: Column(
          children: [
            Obx(() {
              return drawerWithController.showDialPad != true
                  ? Expanded(
                      child: Container(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: Container(
                                    height: 50,
                                    child: TextFormField(
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        fillColor: Color(0xffD4F1F4),
                                        filled: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 1, horizontal: 20),

                                        hintText: 'Topic of notice',
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                                50)), // Hide the default border
                                      ),
                                    ),
                                  )),
                              Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: Container(
                                    height: 50,
                                    child: TextFormField(
                                      inputFormatters: [maskFormatter],
                                      style: TextStyle(color: Colors.white),
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        fillColor: Color(0xffD4F1F4),
                                        filled: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 1, horizontal: 20),
                                        hintText: 'Notice date',
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                                50)), // Hide the default border
                                      ),
                                    ),
                                  )),
                              Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: Container(
                                    height: 50,
                                    child: TextFormField(
                                      inputFormatters: [time],
                                      style: TextStyle(color: Colors.white),
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        fillColor: Color(0xffD4F1F4),
                                        filled: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 1, horizontal: 20),
                                        hintText: 'Notice time',
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                                50)), // Hide the default border
                                      ),
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 10),
                                child: TextFormField(
                                  maxLines: 7,
                                  style: TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                    fillColor: Color(0xffD4F1F4),
                                    filled: true,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 20),
                                    hintText: 'Notice description',
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            10)), // Hide the default border
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  : Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Container(
                                  height: 50,
                                  child: TextFormField(
                                      keyboardType:TextInputType.number,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      fillColor: Color(0xffa6b8ba),
                                      filled: true,
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 1, horizontal: 20),

                                      hintText: 'Search',
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                              50)), // Hide the default border
                                    ),
                                  ),
                                )),
                            // Expanded(
                            //   child: Container(
                            //     width: 100.w,
                            //     margin: EdgeInsets.only(
                            //         bottom: 10, left: 10, right: 10),
                            //     decoration: BoxDecoration(
                            //         gradient: LinearGradient(
                            //       begin: Alignment.topLeft,
                            //       end: Alignment.bottomRight,
                            //       colors: [
                            //         Color(0xfff2b90c),
                            //         Color(0xfff78902),
                            //       ],
                            //     )),
                            //     child: Column(
                            //       children: [
                            //         GetBuilder(
                            //           init: DrawerWithController(),
                            //           builder: (GetxController controller) {
                            //             return Container(
                            //               margin: EdgeInsets.only(top: 3.h),
                            //               height: 10.w,
                            //               width: 50.w,
                            //               decoration: BoxDecoration(
                            //                 color: Colors.white,
                            //                 borderRadius:
                            //                     BorderRadius.circular(5.w),
                            //               ),
                            //               child: Row(
                            //                 mainAxisAlignment:
                            //                     MainAxisAlignment.spaceAround,
                            //                 children: [
                            //                   Text(
                            //                       drawerWithController
                            //                                   .numbers.length >=
                            //                               1
                            //                           ? drawerWithController
                            //                               .numbers[0]
                            //                               .toString()
                            //                           : "-",
                            //                       style: TextStyle(
                            //                           fontSize: 15.sp,
                            //                           fontWeight:
                            //                               FontWeight.bold)),
                            //                   Text(
                            //                       drawerWithController
                            //                                   .numbers.length >=
                            //                               2
                            //                           ? drawerWithController
                            //                               .numbers[1]
                            //                               .toString()
                            //                           : "-",
                            //                       style: TextStyle(
                            //                           fontSize: 15.sp,
                            //                           fontWeight:
                            //                               FontWeight.bold)),
                            //                   Text(
                            //                       drawerWithController
                            //                                   .numbers.length >=
                            //                               3
                            //                           ? drawerWithController
                            //                               .numbers[2]
                            //                               .toString()
                            //                           : "-",
                            //                       style: TextStyle(
                            //                           fontSize: 15.sp,
                            //                           fontWeight:
                            //                               FontWeight.bold)),
                            //                   Text(
                            //                       drawerWithController
                            //                                   .numbers.length >=
                            //                               4
                            //                           ? drawerWithController
                            //                               .numbers[3]
                            //                               .toString()
                            //                           : "-",
                            //                       style: TextStyle(
                            //                           fontSize: 15.sp,
                            //                           fontWeight:
                            //                               FontWeight.bold)),
                            //                 ],
                            //               ),
                            //             );
                            //           },
                            //         ),
                            //         SizedBox(
                            //           height: 2.h,
                            //         ),
                            //         Expanded(
                            //           child: Padding(
                            //             padding: const EdgeInsets.all(10.0),
                            //             child: GridView.builder(
                            //               padding: EdgeInsets.all(10),
                            //               itemCount: 12,
                            //               gridDelegate:
                            //                   SliverGridDelegateWithFixedCrossAxisCount(
                            //                       crossAxisCount: 3,
                            //                       crossAxisSpacing: 18.w,
                            //                       mainAxisSpacing: 1.w),
                            //               itemBuilder: (context, index) {
                            //                 return index == 9 || index == 11
                            //                     ? SizedBox()
                            //                     : GestureDetector(
                            //                         onTap: () {
                            //                           drawerWithController
                            //                               .addNumbers(index);
                            //                         },
                            //                         child: Container(
                            //                             child: Center(
                            //                                 child: Text(
                            //                           index == 10
                            //                               ? "0"
                            //                               : "${index + 1}",
                            //                           style: TextStyle(
                            //                               color: Colors.white,
                            //                               fontSize: 15.sp,
                            //                               fontWeight:
                            //                                   FontWeight.bold),
                            //                         ))),
                            //                       );
                            //               },
                            //             ),
                            //           ),
                            //         ),
                            //       ],
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    );
            })
          ],
        ),
      ),
      floatingActionButton: keyboardIsOpened
          ? SizedBox()
          : FloatingActionButton(
              backgroundColor: Colors.white,
              onPressed: () async {
                CollectionReference student =
                    FirebaseFirestore.instance.collection('students');
                await student
                    .add({'full_name': "Shivam", 'grade': "A", 'age': 10})
                    .then((value) => print("Student data Added"))
                    .catchError((error) => print("Student couldn't be added."));
                drawerWithController.showDialPad.value = true;
              },
              child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                  width: 40,
                  child: Icon(Icons.dialpad)), //icon inside button
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Color(0xffebf0f0),
        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.black26,
                ),
                onPressed: () {
                  drawerWithController.showDialPad.value = false;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 50),
              child: IconButton(
                icon: Icon(
                  Icons.card_giftcard_rounded,
                  color: Colors.black26,
                ),
                onPressed: () {
                  drawerWithController.showDialPad.value = false;
                },
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.calendar_month,
                color: Colors.black26,
              ),
              onPressed: () {
                drawerWithController.showDialPad.value = false;
              },
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.black26,
                ),
                onPressed: () {
                  drawerWithController.showDialPad.value = false;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
