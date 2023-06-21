import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:signup/src/constants/sizes.dart';
import 'package:signup/src/constants/text_strings.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signup/src/features/authentication/controllers/otp_controller.dart';
import 'package:signup/src/features/authentication/screens/dashboard/dashboard.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var OtpController = Get.put(OTPController());
    var otp;

    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(tDefaultSize),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            tOtpTitle,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 80.0,
            ),
          ),
          Text(
            tOtPsubTitle.toUpperCase(),
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(
            height: 40.0,
          ),
          Text(
            "$tOtPmsg harishrithish89@gmail.com",
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20.0,
          ),
          OtpTextField(
            numberOfFields: 6,
            fillColor: Colors.black.withOpacity(0.1),
            filled: true,
            onSubmit: (code) {
              otp = code;
              OTPController.instance.verifyOTP(otp);
            },
          ),
          const SizedBox(
            height: 20.0,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  OTPController.instance.verifyOTP(otp);
                },
                child: Text(tNext)),
          )
        ],
      ),
    ));
  }
}
