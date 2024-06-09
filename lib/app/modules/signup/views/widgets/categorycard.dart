import 'package:flaury_provider/app/widgets/apptext.dart';
import 'package:flaury_provider/app/widgets/space.dart';
import 'package:flutter/material.dart';

import '../../../../utils/theme/colors.dart';

class Categorycard extends StatelessWidget {
  const Categorycard(
      {super.key,
      required this.title,
      required this.icon,
      required this.isSelected,
      required this.onTap});
  final String title;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 100,
        margin: simPad(6, 0),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: isSelected ? Colors.transparent : Colors.white,
          border: Border.all(
            color: isSelected ? AppColors.primary : Colors.grey.shade300,
            width: 2,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icon, color: AppColors.primary),
                hSpace(16),
                MedAppText(title),
              ],
            ),
            Icon(
              isSelected
                  ? Icons.radio_button_checked
                  : Icons.radio_button_unchecked,
              color: AppColors.primary,
            ),
          ],
        ),
      ),
    );
  }
}
