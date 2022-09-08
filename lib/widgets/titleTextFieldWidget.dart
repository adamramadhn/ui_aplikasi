import 'package:flutter/material.dart';

class TitleTextFieldWidget extends StatelessWidget {
  const TitleTextFieldWidget({
    Key? key,
    required this.title,
    required this.color,
    required this.fontSize,
  }) : super(key: key);
  final String title;
  final Color color;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
      ),
      child: Text(
        title,
        style: TextStyle(
            fontSize: fontSize,
            color: color,
            // fontWeight: FontWeight.bold,
            fontFamily: 'Gilroy-ExtraBold'),
      ),
    );
  }
}
