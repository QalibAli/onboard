import 'package:flutter/material.dart';
import 'package:lesson/utils/constants/app_colors.dart';
import 'package:lesson/utils/extension/context_extension.dart';

class GlobalInkwellButton extends StatelessWidget {
  const GlobalInkwellButton({super.key, required this.onTap});

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: const WidgetStatePropertyAll(AppColors.transparent),
      onTap: onTap,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(50)),
        child: SizedBox(
          width: 50,
          height: 50,
          child: ColoredBox(
            color: context.primary,
            child: const Icon(
              Icons.keyboard_arrow_right,
            ),
          ),
        ),
      ),
    );
  }
}
