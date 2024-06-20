import 'package:flaury_provider/app/modules/bookings/controllers/bookings_controller.dart';
import 'package:flaury_provider/app/utils/constants/images.dart';
import 'package:flaury_provider/app/utils/constants/sizes.dart';
import 'package:flaury_provider/app/utils/theme/colors.dart';
import 'package:flaury_provider/app/widgets/apptext.dart';
import 'package:flaury_provider/app/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../widgets/appbutton.dart';

class UploadedBookingCard extends StatelessWidget {
  UploadedBookingCard({super.key});

  final BookingsController controller = Get.put(BookingsController());

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(12.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: AppColors.primary),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Time  anf remind me
            Row(
              children: [
                SmallAppText('Jan 1,2024 (11:00 AM)'),
                const Spacer(),
                SmallAppText(' Remind Me'),
                hSpace(AppSizes.md),
                Switch(
                  value: true, // Placeholder for the switch value
                  onChanged: (value) {
                    // Handle switch change
                  },
                  activeColor: AppColors.white,
                  activeTrackColor: AppColors.primary,
                  inactiveTrackColor: AppColors.white,
                  inactiveThumbColor: AppColors.primary,
                ),
              ],
            ),
            const Divider(color: AppColors.primary),

            vSpace(AppSizes.md),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    flex: 3,
                    child: Image.asset(
                      AppImages.booking,
                      width: double.infinity,
                      height: 100.0,
                      fit: BoxFit.cover,
                    )),
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BigAppText('Timeless Salon'),
                        vSpace(AppSizes.xs),
                        // Location
                        SmallAppText('Idan Hills', color: AppColors.grey200),
                        vSpace(AppSizes.xs),
                        //Placeholder
                        SmallAppText(
                          'This is a placeholder for booked serrvices ',
                          maxLines: 2,
                          color: AppColors.primary,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            vSpace(10.0),
            const Divider(color: AppColors.primary),
            vSpace(10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  text: 'Cancel booking',
                  onPressed: () {
                    controller.cancelBooking();
                  },
                  color: AppColors.white,
                  textColor: AppColors.primary,
                  borderColor: AppColors.primary,
                ),
                CustomButton(
                  text: 'View receipt',
                  onPressed: () {
                    // Handle view receipt
                  },
                  color: AppColors.primary,
                  textColor: AppColors.white,
                ),
              ],
            ),
          ],
        ));
  }
}

class CompletedBookingCard extends StatelessWidget {
  const CompletedBookingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(12.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: AppColors.primary),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            vSpace(AppSizes.sm),
            // Time
            SmallAppText('Jan 1,2024 (11:00 AM)'),
            vSpace(AppSizes.sm),
            const Divider(color: AppColors.primary),
            vSpace(AppSizes.md),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    flex: 3,
                    child: Image.asset(
                      AppImages.booking,
                      width: double.infinity,
                      height: 100.0,
                      fit: BoxFit.cover,
                    )),
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BigAppText('Timeless Salon'),
                        vSpace(AppSizes.xs),
                        // Location
                        SmallAppText('Idan Hills', color: AppColors.grey200),
                        vSpace(AppSizes.xs),
                        //Placeholder
                        SmallAppText(
                          'This is a placeholder for booked serrvices ',
                          maxLines: 2,
                          color: AppColors.primary,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            vSpace(10.0),
            const Divider(color: AppColors.primary),
            vSpace(10.0),
            AppOutlinedButton(
              radius: 40.r,
              title: 'View receipt',
              onPressed: () {},
            )
          ],
        ));
  }
}

class CancelledBookingCard extends StatelessWidget {
  const CancelledBookingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(12.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: AppColors.primary),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Time
            vSpace(AppSizes.sm),
            // Time
            SmallAppText('Jan 1,2024 (11:00 AM)'),
            vSpace(AppSizes.sm),
            const Divider(color: AppColors.primary),
            vSpace(AppSizes.md),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    flex: 3,
                    child: Image.asset(
                      AppImages.booking,
                      width: double.infinity,
                      height: 100.0,
                      fit: BoxFit.cover,
                    )),
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BigAppText('Timeless Salon'),
                        vSpace(AppSizes.xs),
                        // Location
                        SmallAppText('Idan Hills', color: AppColors.grey200),
                        vSpace(AppSizes.xs),
                        //Placeholder
                        SmallAppText(
                          'This is a placeholder for booked serrvices ',
                          maxLines: 2,
                          color: AppColors.primary,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            vSpace(10.0),
          ],
        ));
  }
}
