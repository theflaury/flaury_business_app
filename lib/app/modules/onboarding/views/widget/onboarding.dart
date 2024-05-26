import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/helpers/helper.dart';
import '../../../../widgets/apptext.dart';
import '../../../../widgets/space.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: simPad(20, 10),
      child: Column(
        children: [
          vSpace(50),
          Image.asset(
            image,
            width: 600.w,
            height: AppHelpers.screenHeight() * 0.55,
          ),
          MedAppText(
            title,
            fontSize: 22.sp,
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
          ),
          vSpace(5),
          Padding(
            padding: simPad(0, 20),
            child: SmallAppText(
              fontSize: 16.sp,
              description,
              alignment: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
