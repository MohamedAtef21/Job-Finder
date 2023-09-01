import 'dart:async';
import 'package:flutter/material.dart';
import '../core/logic/helper_method.dart';
import '../onboarding/view.dart';

class SplachScreenView extends StatefulWidget {
  const SplachScreenView({Key? key}) : super(key: key);

  @override
  State<SplachScreenView> createState() => _SplachScreenViewState();
}

class _SplachScreenViewState extends State<SplachScreenView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3),(){navigateTo(context, const OnBoardingView(),false);});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(child: Image.asset("assets/images/splachscreen3.png",height: 343,fit: BoxFit.cover),),
          Center(child: Image.asset("assets/images/splachscreen2.png",height: 189,fit: BoxFit.cover),),
          Center(child: Image.asset("assets/images/splachscreen1.png",height: 33,fit: BoxFit.cover),),
        ],
      ),
    );
  }
}
