import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../core/design/cv_uploaded.dart';
import '../core/design/upload.dart';

class EditPortfolioView extends StatelessWidget {
  const EditPortfolioView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Portfolio",
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
      body: Padding(
        padding: const EdgeInsetsDirectional.only(top: 36,start: 24,end: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Add portfolio here",
              style: TextStyle(
                fontSize: 20,
                fontFamily: "SF",
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 16.h),
            const UploadFileView(),
            SizedBox(height: 24.h),
            const CVUploadedView(),
            SizedBox(height: 16.h),
            const CVUploadedView(),
            SizedBox(height: 16.h),
            const CVUploadedView(),
          ],
        ),
      ),
    );
  }
}
