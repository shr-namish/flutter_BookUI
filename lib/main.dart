import 'package:flutter/material.dart';
import 'package:flutternew/view/home_page.dart';
import 'package:get/get.dart';

void main() {

  runApp(Home());
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),



    );
  }
}
