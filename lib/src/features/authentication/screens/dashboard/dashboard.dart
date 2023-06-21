import 'package:flutter/material.dart';
import 'package:signup/src/constants/sizes.dart';
import 'package:signup/src/constants/text_strings.dart';
import 'package:signup/src/features/authentication/screens/dashboard/widgets/appbar.dart';
import 'package:signup/src/features/authentication/screens/dashboard/widgets/banners.dart';
import 'package:signup/src/features/authentication/screens/dashboard/widgets/categories.dart';
import 'package:signup/src/features/authentication/screens/dashboard/widgets/search.dart';
import 'package:signup/src/features/authentication/screens/dashboard/widgets/top_courses.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: const DashboardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tDashboardTitle,
                style: txtTheme.bodyText2,
              ),
              Text(
                tDashboardHeading,
                style: txtTheme.headline4,
              ),
              const SizedBox(
                height: tDashboardPadding,
              ),
              DashboardSearchBox(txtTheme: txtTheme),
              const SizedBox(
                height: tDashboardPadding,
              ),
              DashboardCategories(txtTheme: txtTheme),
              const SizedBox(
                height: tDashboardPadding,
              ),
              DashboardBanners(
                txtTheme: txtTheme,
              ),
              const SizedBox(
                height: tDashboardPadding,
              ),
              Text(tDashboardTopcourses,
                  style: txtTheme.headline5?.apply(fontSizeFactor: 1.2)),
              DashboardTopCourses(txtTheme: txtTheme),
            ],
          ),
        ),
      ),
    );
  }
}
