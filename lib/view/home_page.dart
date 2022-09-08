import 'package:flutter/material.dart';
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
        child: Column(),
      ),
    );
  }
}
