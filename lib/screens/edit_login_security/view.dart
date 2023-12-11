import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobfinder/screens/core/design/others.dart';

import '../core/design/pro_container.dart';

class EditLoginAndSecurityView extends StatelessWidget {
  const EditLoginAndSecurityView ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Login and security",
          style: TextStyle(
              fontSize: 20,
              fontFamily: "SF",
              fontWeight: FontWeight.w500,
              color: Color(0xff111827)),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset("assets/icons/arrow_left.svg"),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          SizedBox(height: 32.h),
          const ProContainerView(title: "Accont access"),
          SizedBox(height: 12.h),
          const OthersView(title: "Email address"),
          const OthersView(title: "Phone number"),
          const OthersView(title: "Change password"),
          const OthersView(title: "Two-step verification"),
          const OthersView(title: "Face ID"),
        ],
      ),
    );
  }
}
