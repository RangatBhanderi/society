import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  String dropdownvalue = 'Relatives';
  String deliveryItem = 'Swiggy';
  TextEditingController login = TextEditingController();
  String selectedValue = 'Swiggy'; // Default selected value

  List<Map<String, dynamic>> dropdownItems = [
    {'value': 'Swiggy', 'image': 'assets/images/swiggy.jpg'},
    {'value': 'Zomato', 'image': 'assets/images/zomato.png'},
    {'value': 'BlinkIt', 'image': 'assets/images/blinkit.jpg'},
    // {'value': 'BlinkIt', 'image': 'assets/image3.png'},
  ];

  // List of items in our dropdown menu
  var items = [
    'Relatives',
    'Delivery',
    'Courier',
    'Made workers',
    'Other',
  ];
  var delivery = [
    'Swiggy',
    'Zomato',
    'BlinkIt',
  ];
  String name = "";
  String email = "";
  String moNO = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
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
            SizedBox(
              height: 2.w,
            ),
            Padding(
              padding: EdgeInsets.only(left: 4.w, right: 4.w),
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Enter name",
                    contentPadding: EdgeInsets.only(
                      left: 10,
                      top: 0,
                      bottom: 0,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.w))),
                validator: (val) {
                  if (val.toString().isEmpty) {
                    return "Enter password";
                  }
                },
              ),
            ),
            SizedBox(
              height: 2.w,
            ),
            Padding(
              padding: EdgeInsets.only(left: 4.w, right: 4.w),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone_in_talk),
                    hintText: "Enter mobile number",
                    contentPadding: EdgeInsets.only(
                      left: 10,
                      top: 0,
                      bottom: 0,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.w))),
                validator: (val) {
                  if (val.toString().isEmpty) {
                    return "Enter password";
                  }
                },
              ),
            ),
            SizedBox(
              height: 2.w,
            ),
            Padding(
              padding: EdgeInsets.only(left: 4.w, right: 4.w),
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: "Enter email id",
                    contentPadding: EdgeInsets.only(
                      left: 10,
                      top: 0,
                      bottom: 0,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.w))),
                validator: (val) {
                  if (val.toString().isEmpty) {
                    return "Enter password";
                  }
                },
              ),
            ),

            SizedBox(
              height: 6.w,
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
            SizedBox(height: 4.w,),
            dropdownvalue == 'Delivery'
                ? Container(
                    margin: EdgeInsets.all(4.w),
                    height: 70,
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(2.w)),
                    child: DropdownButton<String>(
                      underline: SizedBox(),
                      icon: Align(
                          alignment: Alignment.centerRight,
                          child: const Icon(Icons.keyboard_arrow_down)),
                      isExpanded: true,
                      value: selectedValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue!;
                        });
                      },
                      items:
                          dropdownItems.map<DropdownMenuItem<String>>((item) {
                        return DropdownMenuItem<String>(
                          alignment: Alignment.center,
                          value: item['value'],
                          child: Container(
                            height: 70,
                            width: 100.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                              Image.asset(
                                item['image'],
                                height: 30,
                                width: 30,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(width: 4.w,),
                              Text(item['value']),
                            ]),
                          ),
                        );
                      }).toList(),
                    ),
                  )
                : SizedBox()
          ],
        ),
      ),
    );
  }
}
