import 'package:flaury_provider/app/utils/constants/images.dart';
import 'package:flaury_provider/app/utils/theme/colors.dart';
import 'package:flaury_provider/app/widgets/apptext.dart';
import 'package:flaury_provider/app/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({super.key, this.message, this.title});
  final String? message, title;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        padding: const EdgeInsets.all(25.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: AppColors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Center(
              child: Image(
                  image: AssetImage(AppImages.success),
                  width: 150.0,
                  fit: BoxFit.contain,
                  height: 150.0),
            ),
            vSpace(40),
            BigAppText(
              title ?? 'Successful!',
              color: const Color(0xFF7B4C23),
            ),
            vSpace(10),
            MedAppText(
              message ?? 'You have successfully created your account.',
              textAlign: TextAlign.center,
              fontSize: 18.sp,
            ),
          ],
        ),
      ),
    );
  }
}
