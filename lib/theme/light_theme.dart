import 'package:flutter/material.dart';

class LightTheme {
  final _lightColor = _LightColor();
  late ThemeData theme;

  LightTheme() {
    theme = ThemeData(
      appBarTheme: AppBarTheme(
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
          backgroundColor: _lightColor._aladdinsFeather,
          titleTextStyle: TextStyle(color: _lightColor._whiteColor, fontSize: _ThemeSizes.normalSize.value())),
    );
  }
}

class _LightColor {
  final Color _aladdinsFeather = const Color.fromARGB(255, 84, 3, 247);
  final Color _whiteColor = const Color.fromARGB(255, 255, 255, 255);
}

enum _ThemeSizes { normalSize }

extension _ThemeSizeExtension on _ThemeSizes {
  double value() {
    switch (this) {
      case _ThemeSizes.normalSize:
        return 25;
    }
  }
}
