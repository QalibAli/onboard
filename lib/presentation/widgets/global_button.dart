import 'package:flutter/material.dart';
import 'package:lesson/utils/constants/app_paddings.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({super.key, required this.onPressed, required this.text});

  final Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: AppPaddings.hv12,
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 55,
              child: ElevatedButton(
                  onPressed: onPressed,
                  child: Text(text),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
