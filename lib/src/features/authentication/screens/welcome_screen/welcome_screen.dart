import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:signup/src/common_widgets/fade_animation/animation_design.dart';
import 'package:signup/src/common_widgets/fade_animation/fade_inanimation.dart';
import 'package:signup/src/common_widgets/fade_animation/splash_scrren_controller.dart';
import 'package:signup/src/constants/colors.dart';
import 'package:signup/src/constants/image_strings.dart';
import 'package:signup/src/constants/sizes.dart';
import 'package:signup/src/constants/text_strings.dart';
import 'package:signup/src/features/authentication/screens/login/login_screen.dart';
import 'package:signup/src/features/authentication/screens/signup/signup.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Fade_in_animation_controller());
    controller.startAnimation();
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          TFadeinAnimation(
            durationInMs: 1200,
            animate: TAnimatePosition(
                bottomAfter: 0,
                bottomBefore: -100,
                leftBefore: 0,
                leftAfter: 0,
                topAfter: 0,
                topBefore: 0,
                rightAfter: 0,
                rightBefore: 0),
            child: Container(
              padding: EdgeInsets.all(tDefaultSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: AssetImage(tOnBoardingImage3),
                    height: height * 0.6,
                  ),
                  Column(
                    children: [
                      Text(
                        tWelcomeTitle,
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Text(
                        tWelcomeSubTitle,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: OutlinedButton(
                              onPressed: () {
                                Get.to(() => const LoginScreen());
                              },
                              style: OutlinedButton.styleFrom(
                                  foregroundColor: tSecondaryColor,
                                  side: BorderSide(color: tSecondaryColor),
                                  padding: EdgeInsets.symmetric(
                                      vertical: tButtonHeight)),
                              child: Text("Login"))),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                          child: ElevatedButton(
                              onPressed: () {
                                Get.to(() => const SignupScreen());
                              },
                              style: ElevatedButton.styleFrom(
                                  foregroundColor: tWhiteColor,
                                  backgroundColor: tSecondaryColor,
                                  side: BorderSide(color: tSecondaryColor),
                                  padding: EdgeInsets.symmetric(
                                      vertical: tButtonHeight)),
                              child: Text("Sign up"))),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
