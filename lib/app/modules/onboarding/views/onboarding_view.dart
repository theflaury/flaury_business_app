import 'package:flaury_provider/app/utils/constants/images.dart';
import 'package:flaury_provider/app/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../../../utils/constants/textstrings.dart';
import '../controllers/onboarding_controller.dart';
import 'widget/onboarding.dart';
import 'widget/onboardingcircular.dart';
import 'widget/onboardingnavigator.dart';
import 'widget/onboardingskip.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
        body: Stack(
      children: [
        // Horizontal Scrollabe Page
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: const [
            OnboardingPage(
              image: AppImages.onboarding1,
              title: AppTextStrings.onboardingTitle1,
              description: AppTextStrings.onboardingDescription1,
            ),
            OnboardingPage(
              image: AppImages.onboarding2,
              title: AppTextStrings.onboardingTitle2,
              description: AppTextStrings.onboardingDescription2,
            ),
            OnboardingPage(
              image: AppImages.onboarding3,
              title: AppTextStrings.onboardingTitle3,
              description: AppTextStrings.onboardingDescription3,
            ),
          ],
        ),
        // Skip Button
        const OnboardingSkip(),
        // Dot Navigation SmoothPage Indicator
        const OnboardingNavigator(),
        vSpace(10),
        // Circular Button
        const OnboardingCircularButton()
      ],
    ));
  }
}
