import 'package:flutter/material.dart';
import 'package:ui_aplikasi/view/signin_page.dart';

import 'view/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Aplikasi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Gilroy-ExtraBold',
      ),
      initialRoute: SignInPage.route,
      home: const SignInPage(),
      routes: {
        SignInPage.route: (context) => const SignInPage(),
        SignUpPage.route: (context) => const SignUpPage(),
      },
    );
  }
}
