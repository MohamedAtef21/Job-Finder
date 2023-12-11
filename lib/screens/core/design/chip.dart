import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChipView extends StatefulWidget {
  final String textInput,imageinput;
  const ChipView({Key? key, required this.textInput, required this.imageinput}) : super(key: key);

  @override
  State<ChipView> createState() => _ChipViewState();
}

class _ChipViewState extends State<ChipView> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return ChoiceChip(label: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/images/${widget.imageinput}.png",height: 26.h,width: 26.w,fit: BoxFit.fill,),
        SizedBox(width: 8.w,),
        Text(widget.textInput),
      ],
    ),
      labelStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontFamily: "SF",color: Color(0xff111827)),
      padding: const EdgeInsetsDirectional.only(top: 10.5,bottom: 10.5,end: 10.5),
      side: isSelected ? const BorderSide(color: Color(0xff3366FF)): const BorderSide(color: Color(0xffE5E7EB)),
      selected: isSelected,
      selectedColor: const Color(0xffD6E4FF),
      onSelected: (newState){
      isSelected = newState;
      setState(() {});
      },
    );
  }
}
