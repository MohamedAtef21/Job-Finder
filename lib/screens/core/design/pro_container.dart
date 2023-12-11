import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProContainerView extends StatelessWidget {
  final String title;
  const ProContainerView({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 36.h,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xffE5E7EB),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.only(top: 8, start: 24),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontFamily: "SF",
            fontWeight: FontWeight.w500,
            color: Color(0xff6B7280),
          ),
        ),
      ),
    );
  }
}
