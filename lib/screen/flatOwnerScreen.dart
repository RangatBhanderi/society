import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FlatOwnerScreen extends StatefulWidget {
  const FlatOwnerScreen({super.key});

  @override
  State<FlatOwnerScreen> createState() => _FlatOwnerScreenState();
}

class _FlatOwnerScreenState extends State<FlatOwnerScreen> {
  String dropdownvalue = 'Relatives';
  TextEditingController login = TextEditingController();

  // List of items in our dropdown menu
  var items = [
    'Relatives',
    'Delivery',
    'Courier',
    'Made workers',
    'Other',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          height: 100.h,
          width: 100.w,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xffc5dbde),
              Color(0xffb269bf),
            ],
          )),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 4.w),
                  child: TextFormField(
                    controller: login,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: "Enter block no",
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
                        return "Enter username";
                      }
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 4.w),
                  child: TextFormField(
                    controller: login,
                    decoration: InputDecoration(
                        hintText: "Flat no",
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
                        return "Enter username";
                      }
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 4.w),
                  child: TextFormField(
                    controller: login,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "Flat owner name",
                        prefixIcon: Icon(Icons.person_outline),
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
                        return "Enter username";
                      }
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 4.w),
                  child: TextFormField(
                    controller: login,
                    decoration: InputDecoration(
                        hintText: "Email id",
                        prefixIcon: Icon(Icons.email),
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
                        return "Enter username";
                      }
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 4.w),
                  child: TextFormField(
                    controller: login,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "Mobile numbder",
                        prefixIcon: Icon(Icons.phone),
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
                        return "Enter username";
                      }
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 4.w),
                  child: TextFormField(
                    controller: login,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "Number of person",
                        prefixIcon: Icon(Icons.people),
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
                        return "Enter username";
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  margin: EdgeInsets.all(4.w),
                  height: 70,
                  width: 100.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(2.w)),
                  child: DropdownButton(
                    isExpanded: true,
                    menuMaxHeight: 80,
                    value: dropdownvalue,
                    underline: SizedBox(),
                    icon: Align(
                        alignment: Alignment.centerRight,
                        child: const Icon(Icons.keyboard_arrow_down)),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        alignment: Alignment.center,
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
