import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonView extends StatelessWidget {
  String textInput;
  var onClick;
   ButtonView({Key? key,required this.textInput,required this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 48.h,
          child: ElevatedButton(onPressed: () {
            onClick();
          },
            style: ButtonStyle(
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(1000.r))
              )
            ),
              child: Text(textInput),
          ),
        ),
      ],
    );
  }
}
