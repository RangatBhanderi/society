import 'dart:convert';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:path/path.dart';

class FireBaseScreen extends StatefulWidget {
  const FireBaseScreen({super.key});

  @override
  State<FireBaseScreen> createState() => _FireBaseScreenState();
}

class _FireBaseScreenState extends State<FireBaseScreen> {
  CollectionReference student =
      FirebaseFirestore.instance.collection('students');
  List storeData = [];
  Future? data;
  firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;
  String downloadedUrl = "";
  File? _photo;
  final ImagePicker _picker = ImagePicker();
  RxBool fileLoading = false.obs;

  Future imgFromGallery() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _photo = File(pickedFile.path);
        uploadFile();
      } else {
        print('No image selected.');
      }
    });
  }

  Future imgFromCamera() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _photo = File(pickedFile.path);
        uploadFile();
      } else {
        print('No image selected.');
      }
    });
  }

  Future uploadFile() async {
    fileLoading.value = true;
    if (_photo == null) return;
    final fileName = basename(_photo!.path);
    final destination = 'files/$fileName';

    try {
      final ref = firebase_storage.FirebaseStorage.instance
          .ref(destination)
          .child('file/');
      await ref.putFile(_photo!);
      downloadedUrl = await ref.getDownloadURL();
      print(downloadedUrl);
    } catch (e) {
      print('error occured');
    }
    fileLoading.value = false;
  }

  _showPicker(context) async {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Gallery'),
                      onTap: () async {
                        await imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () async {
                      await imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    print("hffshgfk");
    return Scaffold(
      appBar: AppBar(
        title: Text("Firebase screen"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.get_app)),
          IconButton(
              onPressed: () async {
                await _showPicker(context);
              },
              icon: Icon(Icons.image))
        ],
      ),
      body: Container(
        height: 100.h,
        width: 100.w,
        child: Stack(
          children: [
            FutureBuilder(
                future: getFireBaseData(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text("SomeTing Went Wrong"),
                    );
                  } else {
                    return Expanded(
                      child: ListView.builder(
                          itemCount: storeData.length,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 100,
                              width: 100,
                              margin: EdgeInsets.only(top: 2.w),
                              color: Colors.amber,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                        "${snapshot.data![index]["full_name"].toString()} ${index + 1}"),
                                    SizedBox(
                                      width: 100,
                                    ),
                                    Container(
                                      height: 100,
                                      width: 100,
                                      child: Image.network(snapshot.data![index]
                                              ["downloadedUrl"]
                                          .toString(),fit: BoxFit.fill,),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    );
                  }
                }),
            Obx(() => fileLoading == true
                ? Container(
                    height: 100.h,
                    width: 100.h,
                    color: Colors.transparent,
                    child: Center(child: CupertinoActivityIndicator()))
                : SizedBox())
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await student
              .add({
                'full_name': "Shivam11",
                'grade': "A",
                'age': 20,
                "downloadedUrl": downloadedUrl
              })
              .then((value) => print("Student data Added"))
              .catchError((error) => print("Student couldn't be added."));
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Future<List> getFireBaseData() async {
    storeData.clear();
    var querySnapshot = await student.get();
    for (var queryDocumentSnapshot in querySnapshot.docs) {
      print(queryDocumentSnapshot.data());
      storeData.add(queryDocumentSnapshot.data());
    }
    return storeData;
  }
}
