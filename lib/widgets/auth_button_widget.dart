import 'package:flutter/material.dart';

import '../constant/c.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    Key? key,
    required this.text,
    this.iconCustom,
  }) : super(key: key);
  final String text;
  final IconData? iconCustom;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          color: C.color.primaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          children: [
            Center(
              child: Text(
                text,
                style: TextStyle(color: C.color.textWhite, fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 17),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    iconCustom == null
                        ? Icon(
                            Icons.arrow_forward,
                            color: C.color.textWhite,
                          )
                        : Icon(
                            iconCustom,
                            color: C.color.textWhite,
                          ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
