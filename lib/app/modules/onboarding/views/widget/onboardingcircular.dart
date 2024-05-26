import 'package:flaury_provider/app/widgets/apptext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../../../../utils/devices/device_utility.dart';
import '../../../../utils/theme/colors.dart';
import '../../controllers/onboarding_controller.dart';

class OnboardingCircularButton extends StatelessWidget {
  const OnboardingCircularButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 50.0,
      bottom: 10,
      left: 50,
      child: ElevatedButton(
          onPressed: () {
            OnboardingController.instance.nextPage();
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              padding: const EdgeInsets.all(10.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0.r),
              )),
          child: MedAppText('Continue', color: AppColors.white)),
    );
  }
}
