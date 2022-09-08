import 'package:flutter/material.dart';
import 'package:ui_aplikasi/widgets/text_app_widget.dart';

import '../constant/c.dart';

class Footer2 extends StatelessWidget {
  const Footer2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 9),
            child: Image.asset(C.assets.logoC),
          ),
          TextAppWidget(
              text: C.strings.txtSilk,
              color: C.color.textGrey,
              isWeight: true,
              size: 12),
          TextAppWidget(
              text: C.strings.txtSilk2,
              color: C.color.textGrey,
              isWeight: false,
              size: 12),
        ],
      ),
    );
  }
}
