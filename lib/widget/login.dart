import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_screen/core/login_form_state_manage/login_form.dart';
import 'package:login_screen/product/language/language_items.dart';
import 'package:login_screen/widget/login_state.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends LoginState {
  final GlobalKey<FormState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _appBarAnimated(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _loginImage(),
            _formMethod(),
          ],
        ),
      ),
    );
  }

  Form _formMethod() {
    return Form(
        key: _key,
        autovalidateMode: AutovalidateMode.always,
        onChanged: () {
          print('a');
        },
        child: Column(
          children: [
            const LoginForm(),
            ElevatedButton(
                onPressed: () {
                  changeVisibly();
                },
                child: Text(LanguageItem.elevatedButtonName.languageString())),
          ],
        ));
  }

  AnimatedCrossFade _appBarAnimated() {
    return AnimatedCrossFade(
      firstChild: Center(child: Text(LanguageItem.loginPanel.languageString())),
      secondChild: const Center(child: Text('Hey! wait...')),
      crossFadeState: isChange ? CrossFadeState.showSecond : CrossFadeState.showFirst,
      duration: _DurationAnimated.durationLow,
    );
  }

  Row _loginImage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [ImagePaths.ic_login.toWidet()],
    );
  }
}

class _DurationAnimated {
  static const durationLow = Duration(seconds: 1);
}

enum ImagePaths {
  // ignore: constant_identifier_names
  ic_login
}

extension ImagePathExtension on ImagePaths {
  String path() {
    return 'assets/png/$name.png';
  }

  Widget toWidet({double height = 240}) {
    return Image.asset(
      path(),
      height: height,
    );
  }
}
