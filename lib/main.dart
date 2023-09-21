import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:sizer/sizer.dart';
import 'package:society/screen/loginScreen.dart';
import 'package:society/screen/otpScreen.dart';
import 'package:society/screen/society_screen.dart';

import 'invoice_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterDownloader.initialize(debug: true, ignoreSsl: true);
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
          home:OtpScreen(),
        );
      },
    );
  }
}

class LazyScreen extends StatefulWidget {
  const LazyScreen({super.key});

  @override
  State<LazyScreen> createState() => _LazyScreenState();
}

class _LazyScreenState extends State<LazyScreen> {
  List<InvoiceModel> _data = [];
  bool isLoading = false;
  bool isPageLoading = false;
  int page = 1;
  RxBool screenLoad = false.obs;
  bool well = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMoreData(false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 100.h,
        child: LazyLoadScrollView(
          onEndOfPage: () => getMoreData(true),
          child: well == false
              ? Center(
                  child: Text("Something went wrong"),
                )
              : _data.length == 0
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: _data.length,
                      itemBuilder: (context, position) {
                        return Container(
                          height: 100,
                          color: Colors.orange,
                          width: 100.w,
                          child: Center(
                            child: Text(
                                "Position ${position + 1}  ${_data[position].billingAddress}"),
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

  void getMoreData(val) async {
    print(page);
    if (val == false) {
    } else {
      screenLoad.value = true;
    }

    try {
      http.Response res = await http.get(Uri.parse(
          'https://demo.slashdb.com:443/query/all-invoices.json?limit=10&offset=${page}0'));
      page++;
      print(page);
      if (res.statusCode == 200) {
        List decodedData = jsonDecode(res.body);
        print(decodedData==0);
       if(decodedData.length==0)
         {
           Get.snackbar("title", "message");
         }
        decodedData.forEach((item) {
          _data.add(InvoiceModel.fromMap(item));
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
