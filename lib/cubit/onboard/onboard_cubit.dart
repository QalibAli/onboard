import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson/utils/extension/context_extension.dart';
import 'package:lesson/utils/helper/pager.dart';

class ONboardCubit extends Cubit<int> {
  ONboardCubit() : super(0);

  late final pageController = PageController();
  int currentIndex = 0;

  void onDotClicked(int index) {
    pageController.jumpToPage(index);
  }

  void changePage(BuildContext context) {
    currentIndex++;
    print(currentIndex);
    pageController.jumpToPage(currentIndex);
    if (currentIndex == 3) {
      context.pushReplacement(Pager.login);
    }
  }
  

  void onPageChanged(index) {
    currentIndex = index;
    print(currentIndex);
  }

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
