import 'package:flutter/material.dart';
import 'package:lesson/presentation/screens/onboard/widgets/onboard_indicator.dart';
import 'package:lesson/presentation/screens/onboard/widgets/onboard_page_view_widget.dart';
import 'package:lesson/presentation/widgets/global_app_bar.dart';
import 'package:lesson/utils/constants/app_paddings.dart';
import 'package:lesson/utils/constants/app_texts.dart';
import 'package:lesson/utils/extension/context_extension.dart';
import 'package:lesson/utils/helper/pager.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppBar(
        actions: [
          Padding(
            padding: AppPaddings.h12,
            child: GestureDetector(
              onTap: () {
                context.pushReplacement(Pager.login);
              },
              child: Text(
                AppTexts.skip,
                style: context.displaySmall,
              ),
            ),
          ),
        ],
      ),
      body: const Column(
        children: [OnboardPageViewWidget(), OnboardIndicator()],
      ),
    );
  }
}
