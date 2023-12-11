import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jobfinder/screens/bottom_navigation/view.dart';
import 'package:jobfinder/screens/create_account/sign_up.dart';

class AuthPageView extends StatelessWidget {
  const AuthPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //user is logged in
          if (snapshot.hasData){
            return const BottomNavigationView();
          }

          //user is not logged in?
          else{
            return const SignUpView();
          }
        },
      ),
    );
  }
}
