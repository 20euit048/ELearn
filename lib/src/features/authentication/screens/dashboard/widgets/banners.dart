import 'package:flutter/material.dart';
import 'package:signup/src/constants/image_strings.dart';
import 'package:signup/src/constants/sizes.dart';
import 'package:signup/src/constants/text_strings.dart';

import '../../../../../constants/colors.dart';

class DashboardBanners extends StatelessWidget {
  const DashboardBanners({
    Key? key,
    required this.txtTheme,
  }) : super(key: key);
  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //1st banner
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              //For Dark Color
              color: tCardBgColor,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Flexible(child: Image(image: AssetImage(tBannerimage2))),
                    Flexible(child: Image(image: AssetImage(tBannerimage1))),
                  ],
                ),
                const SizedBox(height: 25),
                Text(tDashboardTitle,
                    style: txtTheme.headline5,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis),
                Text(tDashboardBannerSUBtitle,
                    style: txtTheme.bodyText2,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis),
              ],
            ),
          ),
        ),
        const SizedBox(width: tDashboardPadding),
        //2nd Banner
        Expanded(
          child: Column(
            children: [
              //Card
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  //For Dark Color
                  color: tCardBgColor,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Flexible(
                            child: Image(image: AssetImage(tTopcourseimage1))),
                        Flexible(
                            child: Image(image: AssetImage(tBannerimage2))),
                      ],
                    ),
                    Text(tDashboardBannertitle2,
                        style: txtTheme.headline4,
                        overflow: TextOverflow.ellipsis),
                    Text(tDashboardBannerSUBtitle,
                        style: txtTheme.bodyText2,
                        overflow: TextOverflow.ellipsis),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: OutlinedButton(
                      onPressed: () {}, child: const Text(tDashboardButton)),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
