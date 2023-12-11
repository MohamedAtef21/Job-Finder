import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/screens/core/logic/model.dart';

class DescriptionView extends StatefulWidget {
  const DescriptionView({Key? key}) : super(key: key);

  @override
  State<DescriptionView> createState() => _DescriptionViewState();
}

class _DescriptionViewState extends State<DescriptionView> {

 late final JobModel model;
 bool isLoading = false;
 bool isFailed = false;


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          const Text(
            "Job Description",
            style: TextStyle(
              fontSize: 14,
              fontFamily: "SF",
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 8.h),
           Text(
            model.desc,
             style: const TextStyle(
              fontSize: 12,
              fontFamily: "SF",
              fontWeight: FontWeight.w400,
              color: Color(0xff4B5563),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Skill Required",
            style: TextStyle(
              fontSize: 14,
              fontFamily: "SF",
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 8.h),
           Text(
            model.skills,
            style: const TextStyle(
              fontSize: 12,
              fontFamily: "SF",
              fontWeight: FontWeight.w400,
              color: Color(0xff4B5563),
            ),
          ),
        ],
      ),
    );
  }
}
