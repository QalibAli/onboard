import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lesson/cubit/onboard/onboard_cubit.dart';
import 'package:lesson/utils/constants/app_paddings.dart';
import 'package:lesson/utils/extension/context_extension.dart';

import '../../../../data/model/onboard_model.dart';

class OnboardPageViewWidget extends StatelessWidget {
  const OnboardPageViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<ONboardCubit>();
    final model = OnboardModel.model;
    return Expanded(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: PageView.builder(
          onPageChanged: (index) {
            cubit.onPageChanged(index);
          },
          controller: cubit.pageController,
          itemCount: model.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, i) {
            final datas = model[i];
            return Padding(
              padding: AppPaddings.h12,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset(datas.image),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          datas.text,
                          style: context.titleLarge,
                          textAlign: TextAlign.left,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
