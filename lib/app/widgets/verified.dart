import 'package:flaury_provider/app/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../utils/constants/sizes.dart';
import '../utils/theme/colors.dart';
import 'apptext.dart';

class VerifiedName extends StatelessWidget {
  const VerifiedName({
    super.key,
    required this.time,
    this.isVerified = true,
  });

  final String time;
  final bool isVerified;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MedAppText(
          'Good $time !',
          fontSize: AppSizes.md,
        ),
        isVerified
            ? const Icon(
                Iconsax.verify,
                color: AppColors.green,
                size: AppSizes.iconSm,
              )
            : hSpace(AppSizes.xs),
      ],
    );
  }
}
