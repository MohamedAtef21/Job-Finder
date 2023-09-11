import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ApplyContView extends StatefulWidget {
  final String title,content;
  const ApplyContView({Key? key, required this.title, required this.content}) : super(key: key);

  @override
  State<ApplyContView> createState() => _ApplyContViewState();
}

List<String> options = [
  "option 1",
  "option 2",
  "option 3",
  "option 4"
];

class _ApplyContViewState extends State<ApplyContView> {

  String currentOption = options[0];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 327.w,
      height: 81.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: selectedIndex == 0 ? Color(0xff3366FF) : Color(0xffD1D5DB),
        ),
        color: selectedIndex == 0 ? Color(0xffD6E4FF) : Colors.transparent,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.only(start: 16, top: 16),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: "SF",
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 8.h),
                Text(
                  widget.content,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "SF",
                    fontWeight: FontWeight.w500,
                    color: Color(0xff6B7280),
                  ),
                ),
              ],
            ),
            SizedBox(width: 132.w),
            Radio(
              value: options[0],
              groupValue: currentOption,
              onChanged: (value){
                currentOption = value.toString();
                selectedIndex = options.indexOf(value.toString());
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
