import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageView extends StatelessWidget {
  const MessageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsetsDirectional.only(top: 280),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/messages.png",
                height: 142.h,
                width: 173.w,
              ),
              SizedBox(
                height: 24.h,
              ),
              const Text("You have not received any\nmessages",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: "SF",
                    fontWeight: FontWeight.w500,
                    color: Color(0xff111827),
                  ),
                  textAlign: TextAlign.center),
              SizedBox(
                height: 12.h,
              ),
              const Text(
                  "Once your application has reached the interview\nstage, you will get a message from the recruiter.",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: "SF",
                      fontWeight: FontWeight.w400,
                      color: Color(0xff6B7280),
                  ),
                  textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}
