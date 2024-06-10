import 'dart:io';
import 'package:flaury_provider/app/modules/signup/controllers/signup_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/theme/colors.dart';

class ImageSelector extends StatelessWidget {
  final SignupController controller = Get.put(SignupController());

  ImageSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.showPicker(context);
      },
      child: Container(
        width: double.infinity,
        height: 200.r,
        decoration: BoxDecoration(
            color: AppColors.grey400, borderRadius: BorderRadius.circular(10)),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              CupertinoIcons.camera,
              size: 40,
              color: AppColors.primary,
            ),
            SizedBox(height: 10),
            Text(
              'Upload Profile Photo',
              style: TextStyle(color: AppColors.primary),
            ),
          ],
        ),
      ),
    );
  }
}
