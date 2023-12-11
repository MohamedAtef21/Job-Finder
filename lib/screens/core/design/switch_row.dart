import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SwitchRowView extends StatefulWidget {
  final String title;

  const SwitchRowView({Key? key, required this.title}) : super(key: key);

  @override
  State<SwitchRowView> createState() => _SwitchRowViewState();
}

class _SwitchRowViewState extends State<SwitchRowView> {

  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 16,
                fontFamily: "SF",
                fontWeight: FontWeight.w400,
              ),
            ),
            Switch(
              value: value,
              onChanged: (bool position) {
                value = position;
                print("The Switch is $position");
                setState(() {});
              },
              //activeColor: Color(0xff3366FF),
            ),
          ],
        ),
        SizedBox(height: 10.h,),
        Container(
          height: 2,
          color: const Color(0xffE5E7EB),
        ),
        SizedBox(height: 10.h,),
      ],
    );
  }
}
