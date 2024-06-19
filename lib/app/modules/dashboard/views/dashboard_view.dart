import 'package:flaury_provider/app/utils/constants/images.dart';
import 'package:flaury_provider/app/utils/constants/sizes.dart';
import 'package:flaury_provider/app/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/theme/colors.dart';
import '../../../widgets/topbar.dart';
import '../controllers/dashboard_controller.dart';
import 'widgets/appimgsliders.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.bottomNavigationIndex.value,
          items: controller.bottomNavigationItems,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.grey200,
          enableFeedback: false,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: (index) {
            controller.bottomNavigationIndex.value = index;
          },
        ),
        body: Container(
          child: controller
              .getActiveScreen(controller.bottomNavigationIndex.value),
        ),
      ),
    );
    // Dashboard();
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({
    super.key, required this.controller,
  });

  final DashboardController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Bar
            const TopBar(),
            Padding(
                padding: simPad(0, AppSizes.sm),
                child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image Sliders
                      AppPromoSliders(
                        banners: [
                          AppImages.imgslid1,
                          AppImages.imgslid2,
                          AppImages.imgslid3,
                        ],
                      ),
                    ]))
          ],
        ),
      ),
    ));
  }
}
