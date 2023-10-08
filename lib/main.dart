import 'dart:async';
import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:sizer/sizer.dart';
import 'package:society/screen/firebaseScreen.dart';
import 'package:society/screen/otpScreen.dart';
import 'package:society/screen/secondScroll.dart';
import 'package:society/screen/signUpScreen.dart';
import 'package:society/screen/splashScreen.dart';

import 'invoice_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // await FlutterDownloader.initialize(debug: true, ignoreSsl: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Sizer',
          theme: ThemeData.light(),
          home: OtpScreen(),
        );
      },
    );
  }
}

class EverySecond extends StatefulWidget {
  const EverySecond({super.key});

  @override
  State<EverySecond> createState() => _EverySecondState();
}

class _EverySecondState extends State<EverySecond> {
  Timer? _timer;
  int a = 20;

  @override
  void initState() {
    callMehtod();
  }

  Future<void> callMehtod() async {
    Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (a == 0) {
        } else {
          a--;
          setState(() {});
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
            height: 100,
            width: 100,
            color: a == 0 ? Colors.green : Colors.pink,
            child: Center(child: Text(a != 0 ? "${a}" : "Done"))),
      ),
    );
  }
}

class NoticeSwipeScreen extends StatefulWidget {
  const NoticeSwipeScreen({super.key});

  @override
  State<NoticeSwipeScreen> createState() => _NoticeSwipeScreenState();
}

class _NoticeSwipeScreenState extends State<NoticeSwipeScreen> {
  List numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          child: Column(
        children: [
          Padding(
              padding: EdgeInsets.only(top: 5.w,left: 5.w,right: 5.w),
              child: Container(
                height: 40,
                child: TextFormField(
                  // inputFormatters: [maskFormatter],
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    fillColor: Color(0xffD4F1F4),
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 1, horizontal: 20),

                    hintText: 'Search Notice',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            10)), // Hide the default border
                  ),
                ),
              )),

          CarouselSlider.builder(
            itemCount: numbers.length,
            carouselController: controller,
            options: CarouselOptions(
                autoPlay: false,
                reverse: false,
                viewportFraction: 1,
                onPageChanged: (index, reasons) {
                  if (index % 10 == 9) {
                    print("call");
                  }
                }),
            itemBuilder: (context, index, realIdx) {
              return Container(
                height: 100.h,
                margin: EdgeInsets.all(5.w),
                width: 100.w,
                color: Color(0xffD4F1F4),
                child: Container(
                    child: Center(child: Text(numbers[index].toString()))),
              );
            },
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 5.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    Get.to(FireBaseScreen());

                  },
                  child: Container(
                    height: 18.w,
                    width: 25 .w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/swiggy.jpg",
                          fit: BoxFit.fill,
                          height: 12.w,
                          width: 12.w,
                        ),
                        Text(
                          "Notice Button",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w100,
                              fontSize: 12.sp),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 18.w,
                  width: 25.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/swiggy.jpg",
                        fit: BoxFit.fill,
                        height: 12.w,
                        width: 12.w,
                      ),
                      Text(
                        "Notice Button",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w100,
                            fontSize: 12.sp),
                      )
                    ],
                  ),
                ), Container(
                  height: 18.w,
                  width: 25.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/swiggy.jpg",
                        fit: BoxFit.fill,
                        height: 12.w,
                        width: 12.w,
                      ),
                      Text(
                        "Notice Button",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w100,
                            fontSize: 12.sp),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}

List<InvoiceModel> data = [];
int page = 1;

class LazyScreen extends StatefulWidget {
  const LazyScreen({super.key});

  @override
  State<LazyScreen> createState() => _LazyScreenState();
}

class _LazyScreenState extends State<LazyScreen> {
  bool isLoading = false;
  bool isPageLoading = false;
  RxBool screenLoad = false.obs;
  bool well = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initialCall(false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Get.to(SecondScroll());
            },
            icon: Icon(Icons.access_alarm_rounded),
          )
        ],
      ),
      body: Container(
        height: 100.h,
        child: LazyLoadScrollView(
          onEndOfPage: () => getMoreData(true),
          child: well == false
              ? Center(
                  child: Text("Something went wrong"),
                )
              : data.length == 0
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, position) {
                        return Container(
                          height: 100,
                          color: Colors.orange,
                          width: 100.w,
                          child: Center(
                            child: Text(
                                "Position ${position + 1}  ${data[position].billingAddress}"),
                          ),
                        );
                      },
                    ),
        ),
      ),
      bottomNavigationBar: Obx(() {
        return screenLoad == true
            ? Container(
                height: 40, child: Center(child: CircularProgressIndicator()))
            : SizedBox();
      }),
    );
  }

  initialCall(val) async {
    if (val == false) {
    } else {
      screenLoad.value = true;
    }

    try {
      http.Response res = await http.get(Uri.parse(
          'https://demo.slashdb.com:443/query/all-invoices.json?limit=10&offset=${page}0'));
      print(page);
      if (res.statusCode == 200) {
        List decodedData = jsonDecode(res.body);
        print(decodedData == 0);
        if (decodedData.length == 0) {
          Get.snackbar("title", "message");
        }
        decodedData.forEach((item) {
          data.add(InvoiceModel.fromMap(item));
        });
      }
    } catch (e) {
      well = false;
      print(e);
    }
    if (val == false) {
    } else {
      screenLoad.value = false;
    }
    setState(() {});
    print("at endd");
  }

  void getMoreData(val) async {
    if (val == false) {
    } else {
      screenLoad.value = true;
    }
    page++;

    try {
      http.Response res = await http.get(Uri.parse(
          'https://demo.slashdb.com:443/query/all-invoices.json?limit=10&offset=${page}0'));
      print(page);
      if (res.statusCode == 200) {
        List decodedData = jsonDecode(res.body);
        print(decodedData == 0);
        if (decodedData.length == 0) {
          Get.snackbar("title", "message");
        }
        decodedData.forEach((item) {
          data.add(InvoiceModel.fromMap(item));
        });
      }
    } catch (e) {
      well = false;
      print(e);
    }
    if (val == false) {
    } else {
      screenLoad.value = false;
    }
    setState(() {});
    print("at endd");
  }
}

class CarouselScreen extends StatefulWidget {
  const CarouselScreen({super.key});

  @override
  State<CarouselScreen> createState() => _CarouselScreenState();
}

class _CarouselScreenState extends State<CarouselScreen> {
  List numbers = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20
  ];
  CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          child: CarouselSlider.builder(
        itemCount: numbers.length,
        carouselController: controller,
        options: CarouselOptions(
            autoPlay: false,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            onPageChanged: (index, reasons) {
              if (index % 10 == 9) {
                print("call");
              }
            }),
        itemBuilder: (context, index, realIdx) {
          return Container(
            height: 100.h,
            width: 100.w,
            child: Center(child: Text(numbers[index].toString())),
          );
        },
      )),
    );
  }
}
