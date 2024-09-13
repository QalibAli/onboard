import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson/cubit/onboard/onboard_cubit.dart';
import 'package:lesson/presentation/screens/login/login_screen.dart';
import 'package:lesson/presentation/screens/onboard/onboard_screen.dart';

class Pager {
  Pager._();

  static Widget onboard = BlocProvider(
    create: (context) => ONboardCubit(),
    child: const OnboardScreen(),
  );

  static const login = LoginScreen();
}
