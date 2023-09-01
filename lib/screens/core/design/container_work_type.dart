import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WorkTypeChooseView extends StatefulWidget {
  final String imageInput, textInput;

  const WorkTypeChooseView(
      {Key? key, required this.imageInput, required this.textInput})
      : super(key: key);

  @override
  State<WorkTypeChooseView> createState() => _WorkTypeChooseViewState();
}

class _WorkTypeChooseViewState extends State<WorkTypeChooseView> {
  Color containerColor = Color(0xffFAFAFA);
  Color borderColor = Color(0xffD1D5DB);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        containerColor = containerColor == Color(0xffFAFAFA)
            ? Color(0xffD6E4FF)
            : Color(0xffFAFAFA);
        borderColor = borderColor == Color(0xffD1D5DB)
            ? Color(0xff3366FF)
            : Color(0xffD1D5DB);
        setState(() {});
      },
      child: Container(
        width: 156.w,
        height: 146.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: borderColor),
          color: containerColor,
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.only(top: 20, start: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 48.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                    shape:BoxShape.circle,
                    border: Border.all(color: borderColor),
                  ),
                  child: SvgPicture.asset(
                "assets/icons/${widget.imageInput}.svg",
                color: borderColor,fit: BoxFit.scaleDown,
              )),
              SizedBox(
                height: 16.h,
              ),
              Text(
                widget.textInput,
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: "SF",
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
      ),
    );
  }
}
