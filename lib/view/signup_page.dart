import 'package:flutter/material.dart';
import 'package:ui_aplikasi/view/signin_page.dart';
import 'package:ui_aplikasi/widgets/auth_button_widget.dart';
import 'package:ui_aplikasi/widgets/footer2_auth.dart';
import 'package:ui_aplikasi/widgets/footer_auth.dart';
import 'package:ui_aplikasi/widgets/textfieldWidget.dart';

import '../constant/c.dart';
import '../widgets/titleTextFieldWidget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);
  static String route = "signup_page";
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late TextEditingController txtFirstName;
  late TextEditingController txtLastName;
  late TextEditingController txtNIK;
  late TextEditingController txtemail;
  late TextEditingController txtPhone;
  late TextEditingController txtpassword1;
  late TextEditingController txtpassword2;
  final formSignUp = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    txtFirstName = TextEditingController();
    txtLastName = TextEditingController();
    txtNIK = TextEditingController();
    txtemail = TextEditingController();
    txtPhone = TextEditingController();
    txtpassword1 = TextEditingController();
    txtpassword2 = TextEditingController();
  }

  @override
  void dispose() {
    txtFirstName.dispose();
    txtLastName.dispose();
    txtNIK.dispose();
    txtemail.dispose();
    txtPhone.dispose();
    txtpassword1.dispose();
    txtpassword2.dispose();
    super.dispose();
  }

  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formSignUp,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TitleTextFieldWidget(
                              title: C.strings.txtFirstName,
                              color: C.color.primaryColor,
                              fontSize: 16),
                          TextFieldWidget(
                              hintText: C.strings.txtFirstName,
                              controller: txtFirstName),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TitleTextFieldWidget(
                              title: C.strings.txtLastName,
                              color: C.color.primaryColor,
                              fontSize: 16),
                          TextFieldWidget(
                              hintText: C.strings.txtLastName,
                              controller: txtLastName),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                TitleTextFieldWidget(
                    title: C.strings.txtNIK,
                    color: C.color.primaryColor,
                    fontSize: 16),
                TextFieldWidget(
                    hintText: C.strings.txtNIKHint, controller: txtNIK),
                const SizedBox(
                  height: 40,
                ),
                TitleTextFieldWidget(
                    title: C.strings.txtEmail,
                    color: C.color.primaryColor,
                    fontSize: 16),
                TextFieldWidget(
                    hintText: C.strings.txtEmailHint, controller: txtemail),
                const SizedBox(
                  height: 40,
                ),
                TitleTextFieldWidget(
                    title: C.strings.txtPhone,
                    color: C.color.primaryColor,
                    fontSize: 16),
                TextFieldWidget(
                    hintText: C.strings.txtPasswordHint, controller: txtPhone),
                const SizedBox(
                  height: 40,
                ),
                TitleTextFieldWidget(
                    title: C.strings.txtPassword,
                    color: C.color.primaryColor,
                    fontSize: 16),
                TextFieldWidget(
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
                    hintText: C.strings.txtPasswordHint,
                    controller: txtpassword1),
                const SizedBox(
                  height: 40,
                ),
                TitleTextFieldWidget(
                    title: C.strings.txtPasswordConfirm,
                    color: C.color.primaryColor,
                    fontSize: 16),
                TextFieldWidget(
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
                    hintText: C.strings.txtPasswordHintConfirm,
                    controller: txtpassword2),
                const SizedBox(
                  height: 40,
                ),
                GestureDetector(
                    onTap: () {
                      final isValidForm = formSignUp.currentState!.validate();
                      if (isValidForm) {
                        Navigator.pushNamedAndRemoveUntil(
                            context, SignInPage.route, (route) => false);
                      }
                    },
                    child: AuthButton(text: C.strings.txtSignUp)),
                GestureDetector(
                  onTap: () => Navigator.pushNamedAndRemoveUntil(
                      context, SignInPage.route, (route) => false),
                  child: FooterAuth(
                      text1: C.strings.txtHaveAccount,
                      text2: C.strings.txtSignInNow),
                ),
                const Footer2()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
