import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


class TextIconInputView extends StatefulWidget {
  final String labelText,iconPath;
  final bool obscureText ;
  final TextInputType inputType;
  final TextEditingController control;
  const TextIconInputView({Key? key, required this.labelText, required this.iconPath, required this.obscureText, required this.inputType, required this.control}) : super(key: key);

  @override
  State<TextIconInputView> createState() => _TextIconInputViewState();
}

class _TextIconInputViewState extends State<TextIconInputView> {
 //
 //  bool isLoading = false;
 //  bool isFailed = false;
 //
 //  final emailController = TextEditingController();
 // // final passwordcontroller = TextEditingController();
 //
 //
 //  Future<void> login()async{
 //    isLoading = true;
 //    setState(() {});
 //    try{
 //      var response = await Dio().post("https://project2.amit-learning.com/api/auth/login",data: {
 //        "phone":emailController.text,
 //      //  "password":passwordcontroller.text,
 //        "token" : "260|7YVSWyGpAiLCxJ3GwuUBFmc2qoxNLNo1QwmLd9bO",
 //      },
 //      );
 //    }on DioException{
 //      isFailed = true;
 //    }
 //    isLoading = false;
 //    setState(() {});
 //    isFailed? ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("Failed!!"),
 //      duration: Duration(seconds: 5),
 //    ))
 //        :  navigateTo(context, BottomNavigationView());
 //  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.control,
      keyboardType: widget.inputType,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        prefixIcon:SvgPicture.asset("assets/icons/${widget.iconPath}.svg",fit: BoxFit.scaleDown,),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        hintText:widget.labelText,
        hintStyle:const TextStyle(fontSize: 14,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff9CA3AF))
      ),
    );
  }
}
