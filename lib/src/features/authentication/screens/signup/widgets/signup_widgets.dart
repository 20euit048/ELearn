import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:signup/src/features/authentication/controllers/signup_controller.dart';
import 'package:signup/src/features/authentication/screens/forgot_password/forgot_password_otp/otp_screen.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class signup_form_widget extends StatelessWidget {
  const signup_form_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullName,
              decoration: InputDecoration(
                label: Text(tFullName),
                prefixIcon: Icon(Icons.person_outline_outlined),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: tFormHeight - 10,
            ),
            TextFormField(
              controller: controller.email,
              decoration: InputDecoration(
                label: Text(tEmail),
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: tFormHeight - 10,
            ),
            TextFormField(
              controller: controller.phoneNo,
              decoration: InputDecoration(
                label: Text(tPhoneNo),
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: tFormHeight - 10,
            ),
            TextFormField(
              controller: controller.password,
              decoration: InputDecoration(
                label: Text(tPassword),
                prefixIcon: Icon(Icons.fingerprint),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: tFormHeight - 10,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        SignUpController.instance.phoneAuthentication(
                            controller.phoneNo.text.trim());
                        Get.to(() => const OtpScreen());
                        /* SignUpController.instance.registerUser(
                            controller.email.text.trim(),
                            controller.password.text.trim());*/
                      }
                    },
                    child: Text(tSignup)))
          ],
        ),
      ),
    );
  }
}
