import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobfinder/screens/core/design/pro_container.dart';

import '../core/design/switch_row.dart';

class EditNotificationView extends StatelessWidget {
  const EditNotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Notification",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32.h),
            const ProContainerView(title: "Job notification"),
            SizedBox(height: 12.h),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 24, end: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SwitchRowView(title: "Your Job Search Alert"),
                  SizedBox(height: 20.h),
                  const SwitchRowView(title: "Job Application Update"),
                  SizedBox(height: 20.h),
                  const SwitchRowView(title: "Job Application Reminders"),
                  SizedBox(height: 20.h),
                  const SwitchRowView(title: "Jobs You May Be Interested In"),
                  SizedBox(height: 20.h),
                  const SwitchRowView(title: "Job Seeker Updates"),
                  SizedBox(height: 20.h,)
                ],
              ),
            ),
            const ProContainerView(title: "Other notification"),
            SizedBox(height: 12.h),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 24, end: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SwitchRowView(title: "Show Profile"),
                  SizedBox(height: 20.h),
                  const SwitchRowView(title: "All Message"),
                  SizedBox(height: 20.h),
                  const SwitchRowView(title: "Message Nudges"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
