import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:ui_aplikasi/widgets/footer_home_widget.dart';

import '../constant/c.dart';
import '../widgets/auth_button_widget.dart';
import '../widgets/text_app_widget.dart';
import '../widgets/text_field_widget.dart';

enum SegmentType { profile, pengaturan }

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);
  static String route = 'profile_page2';
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late TextEditingController txtFirstName;
  late TextEditingController txtLastName;
  late TextEditingController txtNIK;
  late TextEditingController txtemail;
  late TextEditingController txtPhone;
  late final CustomSegmentedController<SegmentType> controller;

  @override
  void initState() {
    super.initState();
    controller = CustomSegmentedController();
    txtFirstName = TextEditingController();
    txtLastName = TextEditingController();
    txtNIK = TextEditingController();
    txtemail = TextEditingController();
    txtPhone = TextEditingController();
  }

  @override
  void dispose() {
    txtFirstName.dispose();
    txtLastName.dispose();
    txtNIK.dispose();
    txtemail.dispose();
    txtPhone.dispose();
    super.dispose();
  }

  int sharedVal = 0;
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
                              GestureDetector(
                                onTap: () => Navigator.pop(context),
                                child: TextAppWidget(
                                    text: C.strings.myProfile,
                                    color: C.color.textGrey,
                                    isWeight: false,
                                    size: 12),
                              ),
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(bottom: 20),
                width: MediaQuery.of(context).size.width * 0.8,
                child: CustomSlidingSegmentedControl<SegmentType>(
                  isStretch: true,
                  decoration: BoxDecoration(
                    color: C.color.textWhite,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: 20,
                  thumbDecoration: BoxDecoration(
                      color: C.color.segColor,
                      borderRadius: BorderRadius.circular(20)),
                  fromMax: true,
                  height: 30,
                  innerPadding: EdgeInsets.zero,
                  curve: Curves.easeIn,
                  controller: controller,
                  children: {
                    SegmentType.profile: Text(
                      'Profile Saya',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Proxima',
                        color: C.color.primaryColor,
                      ),
                    ),
                    SegmentType.pengaturan: Text(
                      'Pengaturan',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Proxima',
                        color: C.color.primaryColor,
                      ),
                    ),
                  },
                  onValueChanged: (v) {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CardProfile(),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: TextAppWidget(
                            text: C.strings.profileTextT1,
                            color: C.color.primaryColor,
                            isWeight: true,
                            size: 16),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(50),
                            ),
                            child: Container(
                              height: 36,
                              width: 36,
                              color: C.color.segColor,
                              child: Image.asset(C.assets.iconPerson),
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextAppWidget(
                                  text: C.strings.profileTextDataDiri,
                                  color: C.color.blackSemi,
                                  isWeight: true,
                                  size: 14),
                              const SizedBox(
                                height: 5,
                              ),
                              TextAppWidget(
                                  text: C.strings.profileTextDataDiri2,
                                  color: C.color.textGrey,
                                  isWeight: false,
                                  size: 10),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                              height: 36,
                              width: 36,
                              color: C.color.textGreyLight,
                              child: Image.asset(
                                C.assets.iconLoc,
                                color: C.color.textGreyDarker,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: TextAppWidget(
                                text: C.strings.txtFirstName,
                                color: C.color.primaryColor,
                                isWeight: true,
                                size: 16),
                          ),
                          TextFieldWidget(
                              isShadow: 'y',
                              hintText: C.strings.txtFirstName,
                              controller: txtFirstName),
                          const SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: TextAppWidget(
                                text: C.strings.txtLastName,
                                color: C.color.primaryColor,
                                isWeight: true,
                                size: 16),
                          ),
                          TextFieldWidget(
                              isShadow: 'y',
                              hintText: C.strings.txtLastName,
                              controller: txtLastName),
                          const SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: TextAppWidget(
                                text: C.strings.txtEmail,
                                color: C.color.primaryColor,
                                isWeight: true,
                                size: 16),
                          ),
                          TextFieldWidget(
                              isShadow: 'y',
                              hintText: C.strings.txtEmailHint,
                              controller: txtemail),
                          const SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: TextAppWidget(
                                text: C.strings.txtPhone,
                                color: C.color.primaryColor,
                                isWeight: true,
                                size: 16),
                          ),
                          TextFieldWidget(
                              isShadow: 'y',
                              hintText: C.strings.txtPhone,
                              controller: txtPhone),
                          const SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: TextAppWidget(
                                text: C.strings.txtNIK,
                                color: C.color.primaryColor,
                                isWeight: true,
                                size: 16),
                          ),
                          TextFieldWidget(
                              isShadow: 'y',
                              hintText: C.strings.txtNIKHint,
                              controller: txtNIK),
                          const SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Image.asset(
                                    C.assets.iconInform,
                                  ),
                                ),
                                Expanded(
                                  flex: 8,
                                  child: TextAppWidget(
                                      text: C.strings.profileTextInform,
                                      color: C.color.textGreyDarker,
                                      isWeight: false,
                                      size: 12),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: AuthButton(
                              text: C.strings.profileTextButton,
                              iconCustom: Icons.save_outlined,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: FooterHomeWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CardProfile extends StatelessWidget {
  const CardProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 162,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: C.color.primaryColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            child: Row(
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
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gilroy-ExtraBold',
                          color: C.color.textWhite,
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
                        color: C.color.textGrey,
                        isWeight: false,
                        size: 14),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 48,
            decoration: BoxDecoration(
              color: C.color.secProfile,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  C.strings.textProfile2,
                  style: TextStyle(color: C.color.textWhite, fontSize: 12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
