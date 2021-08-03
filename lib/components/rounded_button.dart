import 'package:flutter/material.dart';

import '../constant.dart';

class RoundButton extends StatelessWidget {
  final String text;
  final Function press;

  const RoundButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: MaterialButton(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        color: kPrimaryColor,
        onPressed: press,
        child: Text(
          text.toUpperCase(),
        ),
      ),
    );
  }
}
