import 'package:flutter/material.dart';
import 'package:lesson/presentation/widgets/global_button.dart';
import 'package:lesson/presentation/widgets/global_input_widget.dart';
import 'package:lesson/utils/constants/app_paddings.dart';
import 'package:lesson/utils/extension/context_extension.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Log in",
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: AppPaddings.h12,
            child: Text(
              "Email",
              style: context.titleSmall,
            ),
          ),
          const GlobalInputWidget(
            hintText: 'Enter your email address',
          ),
          Padding(
            padding: AppPaddings.h12,
            child: Text(
              "Password",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          const GlobalInputWidget(
            hintText: 'Enter your email address',
            icon: Icon(Icons.security),
          ),
          Padding(
            padding: AppPaddings.h12,
            child: Text(
              "Forgot Password?",
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
          GlobalButton(onPressed: () {}, text: 'Log in'),
          const Spacer(),
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "New to Foxcrypto?",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Text(
                  "Create an account",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
