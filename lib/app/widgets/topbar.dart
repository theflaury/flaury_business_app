import 'package:flaury_provider/app/utils/constants/sizes.dart';
import 'package:flaury_provider/app/widgets/space.dart';
import 'package:flaury_provider/app/widgets/verified.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../routes/app_pages.dart';
import '../utils/constants/images.dart';
import '../utils/theme/colors.dart';
import 'apptext.dart';
import 'notificationicon.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, AppSizes.md, 0, 0),
      child: Container(
        padding: simPad(AppSizes.sm, AppSizes.md),
        height: 100.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.littlewhite.withOpacity(0.4),
        ),
        child: Padding(
          padding: simPad(AppSizes.md, 0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Image
              Stack(
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.grey100,
                    radius: 30,
                    child: Image.asset(
                      AppImages.profileimg,
                      width: 50.w,
                      height: 50.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    right: 5,
                    bottom: 0,
                    child: Container(
                      height: 15.h,
                      width: 15.w,
                      decoration: const BoxDecoration(
                        color: AppColors.green,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
              hSpace(AppSizes.md),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const VerifiedName(time: 'Morning', isVerified: true),
                  SmallAppText('Becca Jenner',
                      fontSize: AppSizes.lg, fontWeight: FontWeight.bold),
                ],
              ),
              const Spacer(),

              // Notification
              NotificationIcon(
                onPressed: () {
                  Get.toNamed(Routes.NOTIFICATIONS);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
