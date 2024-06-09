import 'package:flaury_provider/app/modules/signup/views/orginfo_view.dart';
import 'package:flaury_provider/app/widgets/appbutton.dart';
import 'package:flaury_provider/app/widgets/apptext.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/theme/colors.dart';
import '../../../widgets/space.dart';
import '../controllers/signup_controller.dart';
import 'widgets/categorycard.dart';

class CategoryView extends GetView {
  CategoryView({super.key});

  @override
  final controller = Get.put(SignupController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          titleSpacing: 1,
          title: BigAppText('Select A Category'),
          leading: const Icon(Icons.arrow_back_ios)),
      body: SafeArea(
        child: Padding(
          padding: simPad(15, 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SmallAppText(
                'Select a category that best describes your business as this will help customers find you on the Flaury app',
                color: AppColors.grey,
              ),
              vSpace(20),
              Expanded(
                flex: 2,
                child: Obx(() {
                  return ListView(
                    children: [
                      Categorycard(
                        title: 'Haircut & styling',
                        icon: Icons.content_cut,
                        isSelected: controller.selectedService.value ==
                            'Haircut & styling',
                        onTap: () =>
                            controller.selectService('Haircut & styling'),
                      ),
                      Categorycard(
                        title: 'Makeup',
                        icon: Icons.brush,
                        isSelected:
                            controller.selectedService.value == 'Makeup',
                        onTap: () => controller.selectService('Makeup'),
                      ),
                      Categorycard(
                        title: 'Nail services',
                        icon: Icons.spa,
                        isSelected:
                            controller.selectedService.value == 'Nail services',
                        onTap: () => controller.selectService('Nail services'),
                      ),
                      Categorycard(
                        title: 'Facials & Skincare',
                        icon: Icons.face,
                        isSelected: controller.selectedService.value ==
                            'Facials & Skincare',
                        onTap: () =>
                            controller.selectService('Facials & Skincare'),
                      ),
                      Categorycard(
                        title: 'Eyebrows & Lashes',
                        icon: Icons.remove_red_eye,
                        isSelected: controller.selectedService.value ==
                            'Eyebrows & Lashes',
                        onTap: () =>
                            controller.selectService('Eyebrows & Lashes'),
                      ),
                      Categorycard(
                        title: 'Spa',
                        icon: Icons.hot_tub,
                        isSelected: controller.selectedService.value == 'Spa',
                        onTap: () => controller.selectService('Spa'),
                      ),
                      Categorycard(
                        title: 'Massage & therapy',
                        icon: Icons.healing,
                        isSelected: controller.selectedService.value ==
                            'Massage & therapy',
                        onTap: () =>
                            controller.selectService('Massage & therapy'),
                      ),
                      Categorycard(
                        title: 'Fitness',
                        icon: Icons.fitness_center,
                        isSelected:
                            controller.selectedService.value == 'Fitness',
                        onTap: () => controller.selectService('Fitness'),
                      ),
                      Categorycard(
                        title: 'Others',
                        icon: Icons.more_horiz,
                        isSelected:
                            controller.selectedService.value == 'Others',
                        onTap: () => controller.selectService('Others'),
                      ),
                    ],
                  );
                }),
              ),
              vSpace(20),
              AppElevatedButton(
                  title: 'Continue',
                  onPressed: () {
                    controller.selectedService.value != ''
                        ? Get.to(() => const OrginfoView())
                        : Get.snackbar(
                            'No category selected', 'Please select a category');
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
