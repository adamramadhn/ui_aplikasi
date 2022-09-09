import 'package:flutter/material.dart';
import 'package:ui_aplikasi/constant/c.dart';
import 'package:ui_aplikasi/view/home_page.dart';
import 'package:ui_aplikasi/view/home_page2.dart';
import 'package:ui_aplikasi/view/signup_page.dart';
import 'package:ui_aplikasi/widgets/footer2_auth_widget.dart';
import 'package:ui_aplikasi/widgets/text_field_widget.dart';

import '../widgets/auth_button_widget.dart';
import '../widgets/footer_auth_widget.dart';
import '../widgets/title_text_field_widget.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);
  static String route = "signin_page";
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, HomePage2.route),
                child: AuthButton(text: C.strings.txtLogin),
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, SignUpPage.route),
                child: FooterAuth(
                    text1: C.strings.txtUnregistered,
                    text2: C.strings.txtSignUpNow),
              ),
              const Footer2()
            ],
          ),
        ),
      ),
    );
  }
}
