import 'package:flaury_provider/app/utils/constants/images.dart';
import 'package:flaury_provider/app/utils/theme/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splashscreen_controller.dart';

class SplashscreenView extends GetView<SplashscreenController> {
  const SplashscreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
          child: Image(
        height: 200,
        width: 200,
        image: AssetImage(AppImages.splashlogo),
      )),
    );
  }
}
