import 'package:flutter/material.dart';
import 'package:real_estate_website/components/app_bar.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //this size provides the total height and screen
    return Scaffold(
      body: Container(
        height: size.height,
        // it will take full width
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/streetup.jpg"),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Navbar(),
            ],
          ),
        ),
      ),
    );
  }
}
