import 'package:flutter/material.dart';
import 'package:foodie/pages/login_page.dart';
import 'package:foodie/pages/register_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
//initaly show login page
  bool showLoginpage = true;

//toggle between login
  void togglePass() {
    setState(() {
      showLoginpage = !showLoginpage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginpage) {
      return LoginPage(onTap: togglePass);
    } else {
      return RegisterPage(onTap: togglePass);
    }
  }
}
