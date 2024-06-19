import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../utils/devices/device_utility.dart';
import '../../../../widgets/apptext.dart';
import '../../controllers/onboarding_controller.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final onboardingController = Get.find<OnboardingController>();

    return Positioned(
      top: AppDeviceUtils.getAppBarHeight() - 10.r,
      right: 24.0.r,
      child: Obx(
        () => Visibility(
          visible: onboardingController.currentPageIndex.value != 2,
          child: TextButton(
            onPressed: () {
              OnboardingController.instance.skipPage();
            },
            child: MedAppText('Skip'),
          ),
        ),
      ),
    );
  }
}
