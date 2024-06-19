import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/theme/colors.dart';

class CircularContainerWidget extends StatelessWidget {
  const CircularContainerWidget({
    super.key,
    this.height,
    this.width,
    this.color,
    this.padding,
    this.margin,
  });

  final double? height;
  final double? width;
  final Color? color;
  final double? padding;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height?.h ?? 300.h,
      width: width?.w ?? 400.w,
      margin: margin,
      padding: EdgeInsets.symmetric(
        horizontal: padding ?? 0.0,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(height?.h ?? 20.h),
          color: color ?? AppColors.white.withOpacity(0.2)),
    );
  }
}
