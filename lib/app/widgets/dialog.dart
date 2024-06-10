import 'package:flaury_provider/app/utils/theme/colors.dart';
import 'package:flaury_provider/app/widgets/apptext.dart';
import 'package:flaury_provider/app/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: const Color(0xFFFDF9F3),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircleAvatar(
              radius: 40.0,
              backgroundColor: AppColors.primary,
              child: Icon(
                Icons.thumb_up,
                color: AppColors.white,
                size: 40.0,
              ),
            ),
            const SizedBox(height: 20.0),
            BigAppText(
              'Successful!',
              color: const Color(0xFF7B4C23),
            ),
            vSpace(10),
            MedAppText(
              'You have successfully created your account.',
              textAlign: TextAlign.center,
              fontSize: 18.sp,
            ),
          ],
        ),
      ),
    );
  }
}
