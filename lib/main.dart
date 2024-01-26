import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testapp/pages/first_page.dart';
import 'package:testapp/properties/Bottom_navigation_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigation(),
    );
  }
}
