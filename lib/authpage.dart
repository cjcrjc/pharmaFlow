import 'package:flutter/material.dart';
import 'package:pharmacyapp/loginwidget.dart';
import './signupwidget.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    void toggle() => setState(() {
          isLogin = !isLogin;
        });
    return isLogin
        ? LoginWidget(
            onClickedSignUp: toggle,
          )
        : SignUpWidget(
            onClickedSignIn: toggle,
          );
  }
}
