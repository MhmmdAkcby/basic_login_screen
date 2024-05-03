import 'package:flutter/material.dart';
import 'package:login_screen/core/login_form_state_manage/login_form.dart';

abstract class LoginFormState extends State<LoginForm> {
  final obsecureText = '~';

  bool isSecure = true;

  void changeSecure() {
    setState(() {
      isSecure = !isSecure;
    });
  }
}
