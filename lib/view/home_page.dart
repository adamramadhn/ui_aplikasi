import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_aplikasi/constant/c.dart';
import 'package:ui_aplikasi/widgets/text_app_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static String route = "home_page";
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Stack(
                  children: [
                    Container(
                      color: C.color.primaryColor.withOpacity(0.8),
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width * 0.18,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      width: MediaQuery.of(context).size.width * 0.18,
                      child: CircleAvatar(
                        maxRadius: 20,
                        backgroundColor: Colors.white,
                        child: IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Icon(
                            Icons.close,
                            color: C.color.primaryColor,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(C.assets.ava),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      text: C.strings.nameProfile1,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Gilroy-ExtraBold',
                                        color: C.color.primaryColor,
                                      ),
                                      children: <InlineSpan>[
                                        TextSpan(
                                          text: C.strings.nameProfile2,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  TextAppWidget(
                                      text: C.strings.roleProfile,
                                      color: C.color.primaryColor,
                                      isWeight: false,
                                      size: 11),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          Row(
                            children: [
                              TextAppWidget(
                                  text: C.strings.myProfile,
                                  color: C.color.textGrey,
                                  isWeight: false,
                                  size: 12),
                              const SizedBox(
                                width: 68,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 14,
                                color: C.color.textGrey,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 23,
                          ),
                          Row(
                            children: [
                              TextAppWidget(
                                  text: C.strings.settingsProfile,
                                  color: C.color.textGrey,
                                  isWeight: false,
                                  size: 12),
                              const SizedBox(
                                width: 68,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 14,
                                color: C.color.textGrey,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 44,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(23),
                                  color: C.color.logoutButton,
                                ),
                                width: 131,
                                height: 28,
                                child: Center(
                                    child: Text(
                                  C.strings.signOut,
                                  style: const TextStyle(color: Colors.white),
                                )),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextAppWidget(
                                  text: C.strings.footerProfile,
                                  color: C.color.primaryColor,
                                  isWeight: false,
                                  size: 16),
                              const SizedBox(
                                width: 12,
                              ),
                              Image.asset(C.assets.logoFB),
                              const SizedBox(
                                width: 10,
                              ),
                              Image.asset(C.assets.logoIG),
                              const SizedBox(
                                width: 10,
                              ),
                              Image.asset(C.assets.logoTW),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 86),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextAppWidget(
                                text: C.strings.footerProfileFAQ,
                                color: C.color.textGrey,
                                isWeight: false,
                                size: 14),
                            const SizedBox(
                              width: 48,
                            ),
                            TextAppWidget(
                                text: C.strings.footerProfileTnC,
                                color: C.color.textGrey,
                                isWeight: false,
                                size: 14),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: false,
        titleSpacing: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Builder(
            builder: (context) => IconButton(
              icon: Icon(
                Icons.menu,
                color: C.color.primaryColor,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              color: C.color.primaryColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: C.color.primaryColor,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TopContent(),
              SecContent(
                  isNormal: true,
                  picture: C.assets.icon2,
                  text1: C.strings.homeConetent2_1,
                  text2: C.strings.homeConetent2_2,
                  text3: C.strings.homeConetent2_3),
              SecContent(
                  isNormal: false,
                  picture: C.assets.icon3,
                  text1: C.strings.homeConetent3_1,
                  text2: C.strings.homeConetent3_2,
                  text3: C.strings.homeConetent3_3),
              
            ],
          ),
        ),
      ),
    );
  }
}

class SecContent extends StatelessWidget {
  const SecContent({
    Key? key,
    required this.isNormal,
    required this.picture,
    required this.text1,
    required this.text2,
    required this.text3,
  }) : super(key: key);
  final bool isNormal;
  final String picture;
  final String text1;
  final String text2;
  final String text3;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Stack(
        children: [
          isNormal
              ? Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.height * 0.8,
                    height: 130,
                    // decoration: BoxDecoration(
                    //   gradient: LinearGradient(
                    //     colors: [
                    //       Colors.white,
                    //       C.color.gradientHome,
                    //     ],
                    //   ),
                    //   borderRadius: BorderRadius.circular(16),
                    // ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 16, left: 15),
                          width: MediaQuery.of(context).size.width * 0.8 * 0.7,
                          child: TextAppWidget(
                              text: text1,
                              color: C.color.primaryColor,
                              isWeight: false,
                              size: 18),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 8, left: 15),
                          width: MediaQuery.of(context).size.width * 0.8 * 0.7,
                          child: TextAppWidget(
                              text: text2,
                              color: C.color.secColor,
                              isWeight: false,
                              size: 12),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                text3,
                                style: TextStyle(
                                    color: C.color.primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Icon(
                                Icons.arrow_forward,
                                size: 18,
                                color: C.color.primaryColor,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.height * 0.8,
                    height: 130,
                    // decoration: BoxDecoration(
                    //   gradient: LinearGradient(
                    //     colors: [
                    //       Colors.white,
                    //       C.color.gradientHome,
                    //     ],
                    //   ),
                    //   borderRadius: BorderRadius.circular(16),
                    // ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 16, left: 15),
                          width: MediaQuery.of(context).size.width * 0.8 * 0.7,
                          child: TextAppWidget(
                              text: text1,
                              color: C.color.primaryColor,
                              isWeight: false,
                              size: 18),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 8, left: 15),
                          width: MediaQuery.of(context).size.width * 0.8 * 0.7,
                          child: TextAppWidget(
                              text: text2,
                              color: C.color.secColor,
                              isWeight: false,
                              size: 12),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 12, left: 15),
                          width: MediaQuery.of(context).size.width * 0.8 * 0.7,
                          child: Row(
                            children: [
                              Text(
                                text3,
                                style: TextStyle(
                                    color: C.color.primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Icon(
                                Icons.arrow_forward,
                                size: 18,
                                color: C.color.primaryColor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
          isNormal
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: SizedBox(
                        width: 120,
                        height: 120,
                        child: SvgPicture.asset(
                          picture,
                        ),
                      ),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: SizedBox(
                        width: 120,
                        height: 120,
                        child: SvgPicture.asset(
                          picture,
                        ),
                      ),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}

class TopContent extends StatelessWidget {
  const TopContent({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              width: MediaQuery.of(context).size.height * 0.8,
              height: 130,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), //color of shadow
                    // spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: const Offset(0, 4), // changes position of shadow
                    //first paramerter of offset is left-right
                    //second parameter is top to down
                  ),
                ],
                gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    C.color.gradientHome,
                  ],
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 16, left: 15),
                    width: MediaQuery.of(context).size.width * 0.8 * 0.7,
                    child: Text.rich(
                      TextSpan(
                        text: C.strings.homeConetent1_01,
                        style: TextStyle(
                          fontSize: 18,
                          // fontWeight: FontWeight.bold,
                          fontFamily: 'Gilroy-ExtraBold',
                          color: C.color.primaryColor,
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                            text: C.strings.homeConetent1_02,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 8, left: 15),
                    width: MediaQuery.of(context).size.width * 0.8 * 0.7,
                    child: TextAppWidget(
                        text: C.strings.homeConetent1_2,
                        color: C.color.secColor,
                        isWeight: false,
                        size: 12),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 12, left: 15),
                    width: 110,
                    height: 32,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: C.color.primaryColor),
                    child: Center(
                      child: Text(
                        C.strings.homeConetent1_3,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: 150,
                height: 150,
                child: SvgPicture.asset(C.assets.icon1),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
