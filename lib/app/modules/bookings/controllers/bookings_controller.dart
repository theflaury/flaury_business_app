import 'package:flaury_provider/app/widgets/apptext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/theme/colors.dart';
import '../../../widgets/appbutton.dart';
import '../../../widgets/dialog.dart';
import '../../../widgets/space.dart';
import '../views/widgets/categories.dart';

class BookingsController extends GetxController {
  var currentCategory = 'Uploaded'.obs;

  void selectCategory(String category) {
    if (currentCategory.value == category) {
      currentCategory.value = ''; // Deselect if already selected
    } else {
      currentCategory.value = category; // Select the new category
    }
  }

  Widget getCategoryView() {
    switch (currentCategory.value) {
      case 'Uploaded':
        return const UploadedView();
      case 'Completed':
        return const CompletedView();
      case 'Cancelled':
        return const CancelledView();
      default:
        return const Center(child: Text('Select a category'));
    }
  }

  // Bottom Sheet
  void cancelBooking() {
    Get.bottomSheet(
      BottomSheet(
        onClosing: () {},
        builder: (context) => SafeArea(
          child: Padding(
            padding: simPad(20, 15),
            child: SizedBox(
              height: 200.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Title
                  BigAppText(
                    'Are you sure you want to cancel your booking?',
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                  vSpace(AppSizes.lg * 2),
                  // Button
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Cancel
                      CustomButton(
                        text: ' No ',
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        borderColor: AppColors.primary,
                        color: AppColors.white,
                        textColor: AppColors.primary,
                        radius: AppSizes.borderRadiusLg * 2,
                      ),
                      hSpace(AppSizes.md),
                      // Continue
                      CustomButton(
                        text: 'Yes',
                        onPressed: () {
                          Navigator.pop(context);
                          confirmcancelBooking();
                        },
                        color: AppColors.primary,
                        textColor: AppColors.white,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Confirm Dialog
  void confirmcancelBooking() {
    Get.dialog(
      const SuccessDialog(
        title: 'Booking Cancelled',
        message: 'The booking has been cancelled',
      ),
      barrierDismissible: false,
    );
    Future.delayed(const Duration(seconds: 1), () {
      Get.offAllNamed(Routes.DASHBOARD); // Navigate to the next page
    });
  }
}
