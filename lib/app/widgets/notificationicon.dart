import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'apptext.dart';
import '../utils/theme/colors.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({
    super.key,
    this.iconColor,
    required this.onPressed,
    this.icon,
    this.data,
    this.showcontainer = false,
  });

  final Color? iconColor;
  final VoidCallback onPressed;
  final IconData? icon;
  final String? data;
  final bool? showcontainer;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // icon
        IconButton(
            onPressed: onPressed,
            icon: Icon(
              icon ?? Iconsax.notification_copy,
              color: iconColor ?? AppColors.black,
              size: 30,
            )),
        // number
        if (showcontainer == false)
          Container()
        else
          Positioned(
            right: 0,
            child: Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                color: AppColors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: SmallAppText(data ?? '', color: AppColors.white),
              ),
            ),
          ),
      ],
    );
  }
}
