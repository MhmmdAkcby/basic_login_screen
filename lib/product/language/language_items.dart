enum LanguageItem {
  loginPanel,
  elevatedButtonName,
  hinTextEmail,
  hintTextPassword,
  fmale,
  male,
}

extension LanguageItemsExtension on LanguageItem {
  String languageString() {
    switch (this) {
      case LanguageItem.loginPanel:
        return 'Login Panel';
      case LanguageItem.elevatedButtonName:
        return 'Login';
      case LanguageItem.hinTextEmail:
        return 'E-Mail';
      case LanguageItem.hintTextPassword:
        return 'Password';
      case LanguageItem.fmale:
        return 'Fmale';
      case LanguageItem.male:
        return 'Male';
    }
  }
}
