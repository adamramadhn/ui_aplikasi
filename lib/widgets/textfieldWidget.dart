import 'package:flutter/material.dart';

import '../constant/c.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {Key? key,
      required this.hintText,
      required this.controller,
      this.enable = true,
      this.keyboard,
      this.isObsecure,
      this.visiblePassword})
      : super(key: key);
  final String hintText;
  final TextEditingController controller;
  final bool enable;
  final TextInputType? keyboard;
  final bool? isObsecure;
  final IconButton? visiblePassword;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              border: Border.all(color: C.color.secColor),
            ),
            child: TextFormField(
              keyboardType: keyboard,
              enabled: enable,
              controller: controller,
              obscureText: isObsecure ?? false,
              decoration: InputDecoration(
                suffixIcon: visiblePassword,
                border: InputBorder.none,
                hintText: hintText,
                hintStyle:
                    const TextStyle(color: Colors.grey, fontFamily: 'Proxima'),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
