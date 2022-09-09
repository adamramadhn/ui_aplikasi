import 'package:flutter/material.dart';
import 'package:ui_aplikasi/constant/c.dart';
import 'package:ui_aplikasi/widgets/text_app_widget.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: TextAppWidget(
                  text: C.strings.txtSearch,
                  color: C.color.textGrey,
                  isWeight: false,
                  size: 16),
            ),
            const Icon(Icons.search),
          ],
        ),
      ),
    );
  }
}
