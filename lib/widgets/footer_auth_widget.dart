import 'package:flutter/material.dart';
import 'package:ui_aplikasi/widgets/text_app_widget.dart';

import '../constant/c.dart';

class FooterAuth extends StatelessWidget {
  const FooterAuth({
    Key? key,
    required this.text1,
    required this.text2,
  }) : super(key: key);
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextAppWidget(
                  text: text1,
                  color: C.color.textGrey,
                  isWeight: false,
                  size: 14),
              TextAppWidget(
                  text: text2,
                  color: C.color.primaryColor,
                  isWeight: false,
                  size: 14),
            ],
          ),
         
        ],
      ),
    );
  }
}
