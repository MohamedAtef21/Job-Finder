import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/design/applied_tabs/applied.dart';

class AppliedView extends StatelessWidget {
  const AppliedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Applied Job",
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
      body: const Padding(
        padding: EdgeInsetsDirectional.only(top: 32, start: 24, end: 24),
        child: AppliedJobsNavView(),
      ),
    );
  }
}
