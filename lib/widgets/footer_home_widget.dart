import 'package:flutter/material.dart';
import 'package:ui_aplikasi/constant/c.dart';
import 'package:ui_aplikasi/widgets/text_app_widget.dart';

class FooterHomeWidget extends StatelessWidget {
  const FooterHomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      color: C.color.primaryColor,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              width: 22,
            ),
            Expanded(
              flex: 4,
              child: TextAppWidget(
                  text: C.strings.footerHome1,
                  color: C.color.textWhite,
                  isWeight: true,
                  size: 16),
            ),
            const SizedBox(
              width: 70,
            ),
            Expanded(
              flex: 3,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      C.strings.footerHome2,
                      maxLines: 2,
                      style: TextStyle(color: C.color.textWhite, fontSize: 14),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.arrow_forward,
                      color: C.color.textWhite,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
