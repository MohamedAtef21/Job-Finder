import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/screens/core/design/main_button.dart';
import 'package:jobfinder/screens/core/logic/helper_method.dart';

import '../create_account/sign_up.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int currentpage = 0;
  List<String> titles = [
    "Find a job, and start\nbuilding your career\nfrom now on",
    "Hundreds of jobs are\nwaiting for you to join\ntogether",
    "Get the best choice for\nthe job you've always\ndreamed of"
  ];

  List<String> desc = [
    "Explore over 25,924 available job roles and\nupgrade your operator now.",
    "Immediately join us and start applying for the\njob you are interested in.",
    "The better the skills you have, the greater the\ngood job opportunities for you."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Image.asset(
          "assets/images/logo.png",
          height: 19.h,
          width: 81.w,
        ),
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.only(end: 24),
            child: Center(
                child: Text(
              "Skip",
              style: TextStyle(
                fontSize: 15,
                color: Color(0xff6B7280),
                fontFamily: "SF",
                fontWeight: FontWeight.w400,
              ),
            )),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 375.h,
            child: PageView(
              physics: BouncingScrollPhysics(),
              onPageChanged: (value) {
                currentpage = value;
                setState(() {});
              },
              children: List.generate(
                3,
                (index) => Image.asset(
                  "assets/images/onboarding${currentpage + 1}.png",
                  height: 375.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Center(
            child: Text(
              titles[currentpage],
              style: TextStyle(
                  fontSize: 32,
                  fontFamily: "SF",
                  fontWeight: FontWeight.w500,
                  color: Color(0xff111827)),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Center(
            child: Text(
              desc[currentpage],
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "SF",
                  fontWeight: FontWeight.w400,
                  color: Color(0xff6B7280)),
            ),
          ),
          SizedBox(
            height: 36.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) => Padding(
                    padding:
                        EdgeInsetsDirectional.only(end: index == 2 ? 0 : 5),
                    child: CircleAvatar(
                      radius: 4,
                      backgroundColor:
                          Color(index == currentpage ? 0xff3366FF : 0xffADC8FF),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 36.h,
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 24, end: 24),
            child: SizedBox(
              height: 48.h,
              child: ElevatedButton(
                onPressed: () {
                  if (currentpage == 2) {
                    navigateTo(context, SignUpView());
                  } else {
                    currentpage++;
                    setState(() {});
                  }
                },style: ButtonStyle(
                  shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(1000))
                  )
              ),

                child: Text(currentpage == 2 ? "Get Started" : "Next"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
