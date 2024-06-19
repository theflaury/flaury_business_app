import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utils/devices/device_utility.dart';
import '../../../../utils/theme/colors.dart';
import '../../controllers/onboarding_controller.dart';

class OnboardingNavigator extends StatelessWidget {
  const OnboardingNavigator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;

    return Positioned(
      bottom: AppDeviceUtils.getBottomNavigationBarHeight() + 20.0.h,
      left: AppDeviceUtils.getBottomNavigationBarHeight() + 110.0.w,
      child: SmoothPageIndicator(
        count: 3,
        controller: controller.pageController,
        onDotClicked: controller.dotNavigation,
        effect: ExpandingDotsEffect(
          activeDotColor: AppColors.primary,
          dotHeight: 6.h,
          dotWidth: 8.w,
        ),
      ),
    );
  }
}
