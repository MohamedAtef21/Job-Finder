import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../view.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 195.h,
                flexibleSpace: FlexibleSpaceBar(
                  background: ColoredBox(color: Color(0xffD6E4FF)),
                ),
                title: Text(
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
                      padding: EdgeInsetsDirectional.only(
                        end: 24,
                      ),
                      child: SvgPicture.asset("assets/icons/logout.svg")),
                ],
              ),
            ],
          ),
          Padding(
          padding: EdgeInsetsDirectional.only(top: 165, start: 120),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FloatingActionButton.large(
                  onPressed: () {},
                  child: Image.asset("assets/images/profile_pic.png"),
                ),
                SizedBox(height: 16.h),
                Text(
                  "Rafif Dian Axelingga",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: "SF",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  "Senior UI/UX Designer",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "SF",
                    fontWeight: FontWeight.w400,
                    color: Color(0xff6B7280)
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
