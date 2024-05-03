import 'package:flutter/material.dart';
import 'package:login_screen/widget/login.dart';

abstract class LoginState extends State<Login> {
  bool isChange = false;

  void changeVisibly() {
    setState(() {
      isChange = !isChange;
    });
  }
}
