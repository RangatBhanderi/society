import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'invoice_model.dart';

class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  List<InvoiceModel> _data = [];
  bool isLoading = false;
  bool isPageLoading = false;
  ScrollController _invoiceController = ScrollController();
  int page = 1;

  @override
  void initState() {
    getData();
    _invoiceController.addListener(() {
      if (_invoiceController.position.pixels ==
          _invoiceController.position.maxScrollExtent) {
        page++;
        getMoreData();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List"),
        centerTitle: true,
      ),
      // body: Column(
      //   children: [
      //     Expanded(
      //       child: ListView.builder(
      //           itemCount: 20,
      //           itemBuilder: (BuildContext, int index) {
      //             return Container(
      //               margin: EdgeInsets.all(15),
      //               color: Colors.amber,
      //               child: ListTile(
      //                 title: Text("list items $index"),
      //               ),
      //             );
      //           }),
      //     )
      //   ],
      // ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      controller: _invoiceController,
                      itemCount: _data.length,
                      itemBuilder: (BuildContext context, int index) {
                        InvoiceModel item = _data[index];
                        return ListTile(
                          title: Text("${item.billingAddress}  ${index+1}"),
                        );
                      }),
                ),
                isPageLoading
                    ? Center(child: CircularProgressIndicator())
                    : SizedBox()
              ],
            ),
    );
  }

  void getData() async {
    setState(() => isLoading = true);
    http.Response res = await http.get(Uri.parse(
        'https://demo.slashdb.com:443/query/all-invoices.json?limit=15&offset=10'));
    setState(() => isLoading = false);

    if (res.statusCode == 200) {
      var decodedData = jsonDecode(res.body);
      print(decodedData);
      decodedData.forEach((item) {
        _data.add(InvoiceModel.fromMap(item));
      });
    }
  }

  void getMoreData() async {
    setState(() => isPageLoading = true);
    http.Response res = await http.get(Uri.parse(
        'https://demo.slashdb.com:443/query/all-invoices.json?limit=15&offset=${page}0'));
    setState(() => isPageLoading = false);

    if (res.statusCode == 200) {
      var decodedData = jsonDecode(res.body);
      print(decodedData);
      decodedData.forEach((item) {
        _data.add(InvoiceModel.fromMap(item));
      });
    }
  }
}
