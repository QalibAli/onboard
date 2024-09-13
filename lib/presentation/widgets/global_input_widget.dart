import 'package:flutter/material.dart';
import 'package:lesson/utils/constants/app_colors.dart';
import 'package:lesson/utils/constants/app_paddings.dart';

class GlobalInputWidget extends StatelessWidget {
  const GlobalInputWidget({super.key, required this.hintText, this.icon});

  final String hintText;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.hv12,
      child: TextFormField(
        cursorColor: AppColors.white,
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: icon,
        ),
      ),
    );
  }
}
