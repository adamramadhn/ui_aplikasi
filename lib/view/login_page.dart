import 'package:flutter/material.dart';
import 'package:ui_aplikasi/constant/c.dart';
import 'package:ui_aplikasi/widgets/textStyle.dart';
import 'package:ui_aplikasi/widgets/textfieldWidget.dart';

import '../widgets/titleTextFieldWidget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController txtemail;
  late TextEditingController txtpassword;
  final formLogin = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    txtemail = TextEditingController();
    txtpassword = TextEditingController();
  }

  @override
  void dispose() {
    txtemail.dispose();
    txtpassword.dispose();
    super.dispose();
  }

  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text.rich(
                  TextSpan(
                    text: C.strings.txtH1,
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'Gilroy-ExtraBold',
                      color: C.color.primaryColor,
                    ),
                    children: <InlineSpan>[
                      TextSpan(
                        text: C.strings.txtH1_2,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              TitleTextFieldWidget(
                title: C.strings.txtH2,
                fontSize: 12,
                color: C.color.secColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 225,
                    child: Image.asset(
                      C.assets.imgAuth,
                    ),
                  ),
                ],
              ),
              TitleTextFieldWidget(
                title: C.strings.txtEmail,
                fontSize: 16,
                color: C.color.primaryColor,
              ),
              const SizedBox(
                height: 16,
              ),
              TextFieldWidget(
                  hintText: C.strings.txtEmailHint, controller: txtemail),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TitleTextFieldWidget(
                    title: C.strings.txtPassword,
                    fontSize: 16,
                    color: C.color.primaryColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      C.strings.txtForgotPass,
                      style: TextStyle(fontSize: 14, color: C.color.secColor),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              TextFieldWidget(
                hintText: C.strings.txtPasswordHint,
                controller: txtpassword,
                isObsecure: isObscure,
                visiblePassword: IconButton(
                  color: C.color.secColor,
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  icon: Icon(
                    isObscure
                        ? Icons.visibility_off_outlined
                        : Icons.visibility,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
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
                          C.strings.txtLogin,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 17),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 70, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextAppWidget(
                        text: C.strings.txtUnregistered,
                        color: C.color.textGrey,
                        isWeight: false,
                        size: 14),
                    TextAppWidget(
                        text: C.strings.txtDaftar,
                        color: C.color.primaryColor,
                        isWeight: false,
                        size: 14),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 41),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
