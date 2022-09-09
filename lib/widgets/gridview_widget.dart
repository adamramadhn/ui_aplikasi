import 'package:flutter/material.dart';
import 'package:ui_aplikasi/constant/c.dart';
import 'package:ui_aplikasi/widgets/text_app_widget.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget(
      {Key? key,
      required this.star,
      required this.title,
      required this.price,
      required this.isReady,
      required this.image})
      : super(key: key);
  final String star;
  final String title;
  final String price;
  final bool isReady;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: C.color.textWhite,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.star,
                  color: C.color.starColor,
                  size: 20,
                ),
                const SizedBox(
                  width: 5,
                ),
                TextAppWidget(
                    text: star.toString(),
                    color: C.color.textGrey,
                    isWeight: true,
                    size: 16),
              ],
            ),
          ),
          Image.asset(
            image,
            width: 80,
            height: 80,
          ),
          const SizedBox(
            height: 8,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextAppWidget(
                    text: title,
                    color: C.color.primaryColor,
                    isWeight: true,
                    size: 14),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextAppWidget(
                    text: 'Rp. $price',
                    color: C.color.textOrange,
                    isWeight: true,
                    size: 12),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: C.color.secGreen,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                    child: TextAppWidget(
                        text: isReady
                            ? C.strings.readyStock
                            : C.strings.emptyStock,
                        color: C.color.textGreen,
                        isWeight: false,
                        size: 12),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
