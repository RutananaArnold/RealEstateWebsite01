import 'dart:html';

import 'package:flutter/material.dart';
import 'package:real_estate_website/components/rounded_button.dart';

import 'menu_item.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      //constraints help us to determine the type of screen we are using
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return CustomAppBar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return CustomAppBar(); //supposed to be TabletNavbar
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(46),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -2),
                blurRadius: 30,
                color: Colors.black.withOpacity(0.16))
          ]),
      child: Row(
        children: [
          // Image.asset("assets\images\29.png", height: 25, alignment: Alignment.topCenter),
          Icon(Icons.house_outlined),
          SizedBox(width: 5),
          Text(
            "RealEstate".toUpperCase(),
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          MenuItem(
            title: "Home",
            press: () {},
          ),
          MenuItem(
            title: "Properties",
            press: () {},
          ),
          MenuItem(
            title: "Projects",
            press: () {},
          ),
          MenuItem(
            title: "About Us",
            press: () {},
          ),
          RoundButton(
            text: "Get Started",
            press: () {},
          )
        ],
      ),
    );
  }
}

class MobileNavbar extends StatefulWidget {
  @override
  _MobileNavbarState createState() => _MobileNavbarState();
}

class _MobileNavbarState extends State<MobileNavbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 50),
      child: Container(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PopupMenuButton(
                  offset: Offset(0, 40),
                  onCanceled: () {},
                  elevation: 40,
                  color: Colors.blue,
                  icon: Icon(Icons.menu),
                  iconSize: 30.0,
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 1,
                      child: MenuItem(
                        press: () {},
                        title: "Home",
                      ),
                    ),
                    PopupMenuItem(
                      value: 2,
                      child: MenuItem(
                        press: () {},
                        title: "Properties",
                      ),
                    ),
                    PopupMenuItem(
                      value: 3,
                      child: MenuItem(
                        press: () {},
                        title: "Projects",
                      ),
                    ),
                    PopupMenuItem(
                      value: 4,
                      child: MenuItem(
                        press: () {},
                        title: "About Us",
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                    flex: 5,
                    child: Text(
                      "Real Estates",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
