import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_screen/core/login_form_state_manage/login_form_state.dart';
import 'package:login_screen/product/language/language_items.dart';
import 'package:login_screen/product/padding.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends LoginFormState {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: _Duration._duration,
      child: Padding(
        padding: ProjectPadding().normalPaddingAll,
        child: Column(
          children: [
            Card(
              child: Container(
                  margin: const EdgeInsets.all(8),
                  padding: ProjectPadding().normalPaddingAll,
                  width: 400,
                  child: Column(
                    children: [
                      const EMailTextFromWidget(),
                      _passwordFieldMethod(),
                      Padding(
                        padding: ProjectPadding().normalPaddingAll,
                        child: DropdownButtonFormField<String>(
                            value: 'c',
                            decoration: const InputDecoration(border: OutlineInputBorder()),
                            validator: FormFieldValidator().isNoEmpty,
                            items: [
                              DropdownMenuItem(
                                value: 'c',
                                child: Text(LanguageItem.male.languageString()),
                              ),
                              DropdownMenuItem(
                                value: 'c2',
                                child: Text(LanguageItem.fmale.languageString()),
                              ),
                            ],
                            onChanged: (value) {}),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }

  Padding _passwordFieldMethod() {
    return Padding(
      padding: ProjectPadding().normalPaddingAll,
      child: TextFormField(
        validator: FormFieldValidator().isNoEmpty,
        obscureText: isSecure,
        obscuringCharacter: obsecureText,
        textInputAction: TextInputAction.next,
        autofillHints: const [AutofillHints.password],
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: LanguageItem.hintTextPassword.languageString(),
          suffix: _visibilityPassword(),
        ),
      ),
    );
  }

  IconButton _visibilityPassword() {
    return IconButton(
        onPressed: () {
          changeSecure();
        },
        icon: isSecure ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off));
  }
}

class EMailTextFromWidget extends StatelessWidget {
  const EMailTextFromWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjectPadding().normalPaddingAll,
      child: TextFormField(
        validator: FormFieldValidator().isNoEmpty,
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: LanguageItem.hinTextEmail.languageString(),
        ),
      ),
    );
  }
}

class _Duration {
  static const _duration = Duration(seconds: 1);
}

class FormFieldValidator {
  String? isNoEmpty(String? data) {
    return (data?.isNotEmpty ?? false) ? null : ValidatorMessage._noEmpty;
  }
}

class ValidatorMessage {
  static const String _noEmpty = 'Boş geçmeyiniz';
}
