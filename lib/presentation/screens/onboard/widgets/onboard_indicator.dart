import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson/cubit/onboard/onboard_cubit.dart';
import 'package:lesson/data/model/onboard_model.dart';
import 'package:lesson/presentation/widgets/global_inkwell_button.dart';
import 'package:lesson/utils/constants/app_paddings.dart';
import 'package:lesson/utils/extension/context_extension.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardIndicator extends StatelessWidget {
  const OnboardIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<ONboardCubit>();
    final model = OnboardModel.model;
    return SafeArea(
      child: Padding(
        padding: AppPaddings.h12,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SmoothPageIndicator(
              controller: cubit.pageController,
              count: model.length,
              effect: ExpandingDotsEffect(
                  activeDotColor: context.primary, dotHeight: 3, dotWidth: 18),
              onDotClicked: (index) {
                cubit.onDotClicked(index);
              },
            ),
            GlobalInkwellButton(
              onTap: () {
                
                cubit.changePage(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
