import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/theme/colors.dart';
import '../../../../widgets/apptext.dart';
import '../../../../widgets/space.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
    this.onTap,
    required this.data,
  });
  final Function()? onTap;
  final String data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: simPad(10, 15),
        height: 45.h,
        width: 110.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColors.primary,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MedAppText(
              data,
              color: AppColors.white,
              fontSize: 16.sp,
            ),
          ],
        ),
      ),
    );
  }
}
