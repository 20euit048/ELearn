import 'package:flutter/material.dart';
import 'package:signup/src/constants/image_strings.dart';
import 'package:signup/src/constants/sizes.dart';
import 'package:signup/src/constants/text_strings.dart';

import 'login_footer_widget.dart';
import 'login_form.dart';
import 'login_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Login_header_widget(size: size),
                const LoginForm(),
                const Loginform_widget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
