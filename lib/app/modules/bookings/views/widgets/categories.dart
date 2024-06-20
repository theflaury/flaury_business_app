import 'package:flaury_provider/app/modules/bookings/controllers/bookings_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../utils/theme/colors.dart';
import '../../../../widgets/apptext.dart';
import 'bookingcards.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
    required this.data,
  });

  final String data;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BookingsController());

    return Obx(() {
      final isSelected = controller.currentCategory.value == data;

      return GestureDetector(
        onTap: () => controller.selectCategory(data),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
          height: 45.h,
          width: 110.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: isSelected ? AppColors.primary : Colors.transparent,
            border: Border.all(
              color: isSelected ? Colors.transparent : AppColors.primary,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MedAppText(
                data,
                color: isSelected ? AppColors.white : AppColors.primary,
                fontSize: 16.sp,
              ),
            ],
          ),
        ),
      );
    });
  }
}

class UploadedView extends StatelessWidget {
  const UploadedView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return  UploadedBookingCard();
      },
    );
  }
}

class CompletedView extends StatelessWidget {
  const CompletedView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const CompletedBookingCard();
      },
    );
  }
}

class CancelledView extends StatelessWidget {
  const CancelledView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return  CancelledBookingCard();
      },
    );
  }
}
