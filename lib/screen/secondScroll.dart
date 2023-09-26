import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:sizer/sizer.dart';

import '../invoice_model.dart';
import '../main.dart';

class SecondScroll extends StatefulWidget {
  const SecondScroll({super.key});

  @override
  State<SecondScroll> createState() => _SecondScrollState();
}

class _SecondScrollState extends State<SecondScroll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 100.h,
        child: LazyLoadScrollView(
          onEndOfPage: () => getMoreData(true),
          child:data.length == 0
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
      // bottomNavigationBar: Obx(() {
      //   return screenLoad == true
      //       ? Container(
      //           height: 40, child: Center(child: CircularProgressIndicator()))
      //       : SizedBox();
      // }),
    );
  }

  void getMoreData(val) async {
    // print(page);
    // if (val == false) {
    // } else {
    //   screenLoad.value = true;
    // }
    page++;

    try {
      http.Response res = await http.get(Uri.parse(
          'https://demo.slashdb.com:443/query/all-invoices.json?limit=10&offset=${page}0'));
      print(page);
      print(data.length);
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
      // well = false;
      print(e);
    }
    if (val == false) {
    } else {
      // screenLoad.value = false;
    }
    setState(() {});
    print("at endd");
  }
}
