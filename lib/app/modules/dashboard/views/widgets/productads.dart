import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../widgets/space.dart';

class ProductAds extends StatelessWidget {
  const ProductAds({
    super.key,
    required this.imageUrl,
    this.onPressed,
    this.isNetworkImage = false,
    this.applyImageBorderRadius = true,
  });

  final String imageUrl;
  final VoidCallback? onPressed;
  final bool isNetworkImage;
  final bool applyImageBorderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 75.h,
        padding: simPad(0, AppSizes.sm),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizes.md),
        ),
        child: ClipRRect(
            borderRadius: applyImageBorderRadius
                ? BorderRadius.circular(AppSizes.md)
                : BorderRadius.circular(0),
            child: Image(
              fit: BoxFit.contain,
              image: isNetworkImage
                  ? NetworkImage(imageUrl)
                  : AssetImage(imageUrl) as ImageProvider,
            )),
      ),
    );
  }
}
