import 'dart:ffi';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:signup/src/constants/colors.dart';
import 'package:signup/src/constants/image_strings.dart';
import 'package:signup/src/constants/sizes.dart';
import 'package:signup/src/constants/text_strings.dart';
import 'package:signup/src/features/authentication/screens/login/login_footer_widget.dart';
import 'package:signup/src/features/authentication/screens/login/login_header_widget.dart';
import 'package:signup/src/features/authentication/screens/signup/widgets/signup_widgets.dart';

import '../../../../common_widgets/form/form_header.dart';
import '../login/login_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                FormHeaderWidget(
                  image: tWelcomeScreenImage,
                  title: tSignUpTitle,
                  subTitle: tSignUpSubTitle,
                  heightBetween: null,
                  textAlign: null,
                ),
                signup_form_widget(),
                Column(
                  children: [
                    const Text("OR"),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: Image(
                          image: AssetImage(tGooglelogo),
                          width: 20.0,
                        ),
                        label: const Text(
                          tSignInWithGoogle,
                        ),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text.rich(TextSpan(children: [
                          TextSpan(
                              text: tAlreadyHaveAnAccount,
                              style: Theme.of(context).textTheme.bodyText1),
                          TextSpan(text: tLogin),
                        ])))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
