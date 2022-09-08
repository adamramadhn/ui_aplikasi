import 'package:flutter/cupertino.dart';

class TextAppWidget extends StatelessWidget {
  const TextAppWidget({
    Key? key,
    required this.text,
    required this.color,
    required this.isWeight,
    required this.size,
  }) : super(key: key);
  final String text;
  final Color color;
  final bool isWeight;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontWeight: isWeight ? FontWeight.bold : FontWeight.normal,
          fontSize: size),
    );
  }
}
