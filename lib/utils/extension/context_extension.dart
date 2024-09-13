import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  //theme
  ThemeData get theme => Theme.of(this);
  TextStyle? get titleSmall => Theme.of(this).textTheme.titleSmall;
  TextStyle? get displaySmall => Theme.of(this).textTheme.displaySmall;
  TextStyle? get titleLarge => Theme.of(this).textTheme.titleLarge;
  Color get primary => theme.primaryColor;

  // router
  Future pushReplacement(Widget screen) => Navigator.pushReplacement(
        this,
        MaterialPageRoute(
          builder: (_) => screen,
        ),
      );
}
