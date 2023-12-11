import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobfinder/screens/core/design/profile_general.dart';
import 'package:jobfinder/screens/core/logic/helper_method.dart';
import 'package:jobfinder/screens/edit_language/view.dart';
import 'package:jobfinder/screens/edit_login_security/view.dart';
import 'package:jobfinder/screens/edit_notification/view.dart';
import 'package:jobfinder/screens/edit_portfolio/view.dart';
import 'package:jobfinder/screens/edit_profile/view.dart';

import '../../core/design/others.dart';
import '../../core/design/pro_container.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  bool isLoading = false;

  void signUserOut() async{
    isLoading = true;
    setState(() {});
    await FirebaseAuth.instance.signOut();
    isLoading = false;
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 195,
                  child: CustomScrollView(
                    slivers: <Widget>[
                      SliverAppBar(
                        expandedHeight: 195.h,
                        flexibleSpace: const FlexibleSpaceBar(
                          background: ColoredBox(color: Color(0xffD6E4FF)),
                        ),
                        title: const Text(
                          "Profile",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "SF",
                              fontWeight: FontWeight.w500,
                              color: Color(0xff111827)),
                        ),
                        centerTitle: true,
                        leading: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: SvgPicture.asset("assets/icons/arrow_left.svg"),
                        ),
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        actions: [
                          Padding(
                              padding: const EdgeInsetsDirectional.only(
                                end: 24,
                              ),
                              child: isLoading ? const Center(child: CircularProgressIndicator(),) : GestureDetector(
                                onTap: signUserOut,
                                  child: SvgPicture.asset(
                                      "assets/icons/logout.svg"))),
                        ],
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 141,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 45.r,
                        child: Image.asset(
                          "assets/images/profile_pic.png",
                          height: 90,
                          width: 90,
                        ),
                      ),
                      SizedBox(height: 16.h),
                      const Text(
                        "Rafif Dian Axelingga",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "SF",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      const Text(
                        "Senior UI/UX Designer",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: "SF",
                            fontWeight: FontWeight.w400,
                            color: Color(0xff6B7280)),
                      ),
                      const SizedBox(height: 24),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            start: 24, end: 24),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 327.w,
                              height: 68.h,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      const Text(
                                        "Applied",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "SF",
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff6B7280),
                                        ),
                                      ),
                                      SizedBox(height: 8.h),
                                      const Text(
                                        "46",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: "SF",
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SvgPicture.asset("assets/icons/line3.svg"),
                                  Column(
                                    children: [
                                      const Text(
                                        "Reviewed",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "SF",
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff6B7280),
                                        ),
                                      ),
                                      SizedBox(height: 8.h),
                                      const Text(
                                        "23",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: "SF",
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SvgPicture.asset("assets/icons/line3.svg"),
                                  Column(
                                    children: [
                                      const Text(
                                        "Contacted",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "SF",
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff6B7280),
                                        ),
                                      ),
                                      SizedBox(height: 8.h),
                                      const Text(
                                        "16",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: "SF",
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 28.h),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "About",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "SF",
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff6B7280),
                                  ),
                                ),
                                Text(
                                  "Edit",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "SF",
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff3366FF),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12.h),
                            const Text(
                              "I'm Rafif Dian Axelingga, I’m UI/UX Designer, I have experience designing UI Design for approximately 1 year. I am currently joining the Vektora studio team based in Surakarta, Indonesia.I am a person who has a high spirit and likes to work to achieve what I dream of.",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "SF",
                                fontWeight: FontWeight.w400,
                                color: Color(0xff6B7280),
                              ),
                            ),
                            SizedBox(height: 36.h),
                          ],
                        ),
                      ),
                      const ProContainerView(title: "General"),
                      SizedBox(height: 16.h),
                      GestureDetector(
                          onTap: () {
                            navigateTo(context, const EditProfileView());
                          },
                          child: const GeneralProView(
                              title: "Edit Profile", image: "general_profile")),
                      GestureDetector(
                        onTap: () {
                          navigateTo(context, const EditPortfolioView());
                        },
                        child: const GeneralProView(
                            title: "Portfolio", image: "general_portfolio"),
                      ),
                      GestureDetector(
                        onTap: () {
                          navigateTo(context, const EditLanguageView());
                        },
                        child: const GeneralProView(
                            title: "Language", image: "general_language"),
                      ),
                      GestureDetector(
                        onTap: () {
                          navigateTo(context, const EditNotificationView());
                        },
                        child: const GeneralProView(
                            title: "Notification",
                            image: "general_notification"),
                      ),
                      GestureDetector(
                        onTap: () {
                          navigateTo(context, const EditLoginAndSecurityView());
                        },
                        child: const GeneralProView(
                            title: "Login and security", image: "general_lock"),
                      ),
                      SizedBox(height: 16.h),
                      const ProContainerView(title: "Others"),
                      SizedBox(height: 16.h),
                      const OthersView(title: "Accesibility"),
                      const OthersView(title: "Help Center"),
                      const OthersView(title: "Terms & Conditions"),
                      const OthersView(title: "Privacy Policy"),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
