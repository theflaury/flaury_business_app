import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/theme/colors.dart';
import '../../../../widgets/apptext.dart';
import '../../../../widgets/space.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
    this.label,
    this.fontsize,
    this.validator,
    this.hint,
  });
  final double? fontsize;
  final FormFieldValidator<String>? validator;
  final String? label, hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: label != null,
          child: MedAppText(
            label ?? '',
            color: AppColors.black,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        vSpace(10),
        TextField(
          decoration: InputDecoration(
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.grey100, width: 1.0),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.grey100, width: 1.0),
              ),
              border: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.grey100), // Grey border
              ),
              hintText: hint ?? 'Enter Description',
              fillColor: AppColors.white,
              filled: true,
              // Use the provided validator function, or it
              labelStyle: const TextStyle(
                  color: AppColors.grey200), // Customize label text color
              hintStyle: const TextStyle(color: AppColors.grey100)),

          minLines: 3, // Set this
          maxLines: 8, // and this
          keyboardType: TextInputType.multiline,
        ),
      ],
    );
  }
}
