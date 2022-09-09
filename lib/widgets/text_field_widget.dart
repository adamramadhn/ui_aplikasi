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
      this.visiblePassword,
      this.isShadow})
      : super(key: key);
  final String hintText;
  final TextEditingController controller;
  final bool enable;
  final TextInputType? keyboard;
  final bool? isObsecure;
  final IconButton? visiblePassword;
  final String? isShadow;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 24),
            decoration: BoxDecoration(
              boxShadow: [
                isShadow == 'y'
                    ? BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 7,
                        offset: const Offset(3, 6),
                      )
                    : const BoxShadow()
              ],
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              border: Border.all(color: C.color.transparan),
            ),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'field must be filled!';
                }
                return null;
              },
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
