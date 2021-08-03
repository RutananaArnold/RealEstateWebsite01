import 'package:flutter/material.dart';
import 'package:real_estate_website/constant.dart';
import 'package:real_estate_website/screens/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Real Estate',
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Index(),
    );
  }
}
