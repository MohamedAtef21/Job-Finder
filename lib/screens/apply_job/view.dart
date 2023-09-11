import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../core/design/apply_components/main_comp.dart';

class ApplyJobView extends StatelessWidget {
  const ApplyJobView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Apply Job",
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
          child: Padding(
            padding: EdgeInsetsDirectional.only(top: 34,start: 24,end: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ComponentsView(),
              ],
            ),
          ),
        ));
  }
}
