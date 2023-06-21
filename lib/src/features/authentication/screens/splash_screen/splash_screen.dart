import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:signup/src/common_widgets/fade_animation/animation_design.dart';
import 'package:signup/src/common_widgets/fade_animation/fade_inanimation.dart';
import 'package:signup/src/constants/image_strings.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../../../../common_widgets/fade_animation/splash_scrren_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Fade_in_animation_controller());
    controller.startSplashAnimation();

    return Scaffold(
      body: Stack(
        children: [
          TFadeinAnimation(
            durationInMs: 1600,
            animate: TAnimatePosition(
              topAfter: 0,
              topBefore: -30,
              leftBefore: -30,
              leftAfter: 0,
            ),
            child: const Image(image: AssetImage(tOnBoardingImage2)),
          ),
          TFadeinAnimation(
            durationInMs: 2000,
            animate: TAnimatePosition(
                topBefore: 80,
                topAfter: 80,
                leftAfter: tDefaultSize,
                leftBefore: tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(tAppName, style: Theme.of(context).textTheme.headline2),
                Text(tAppTagLine, style: Theme.of(context).textTheme.headline6)
              ],
            ),
          ),
          TFadeinAnimation(
            durationInMs: 2400,
            child: const Image(image: AssetImage(tSplashImage)),
            animate: TAnimatePosition(bottomBefore: 0, bottomAfter: 100),
          ),
          TFadeinAnimation(
            durationInMs: 2400,
            animate: TAnimatePosition(
              bottomBefore: 0,
              bottomAfter: 60,
              rightBefore: tDefaultSize,
              rightAfter: tDefaultSize,
            ),
            child: Container(
              width: tSplashContainerSize,
              height: tSplashContainerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: tPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
