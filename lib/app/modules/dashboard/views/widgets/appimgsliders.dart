import 'package:carousel_slider/carousel_slider.dart';
import 'package:flaury_provider/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../utils/theme/colors.dart';
import 'circular.dart';
import 'productads.dart';

class AppPromoSliders extends StatelessWidget {
  const AppPromoSliders({
    super.key,
    required this.banners,
  });
  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DashboardController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlay: true,
            pauseAutoPlayOnTouch: true,
            
            onPageChanged: (index, _) {
              controller.updatePageIndicator(index);
            },
            viewportFraction: 1,
            scrollDirection: Axis.horizontal,
          ),
          items: banners.map((url) => ProductAds(imageUrl: url)).toList(),
        ),
        //circular container
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < banners.length; i++)
                (CircularContainerWidget(
                  height: 5,
                  width: 15,
                  margin: EdgeInsets.symmetric(horizontal: 2.w),
                  color: controller.carousalCurrentindex.value == i
                      ? AppColors.primary
                      : AppColors.grey.withOpacity(0.5),
                )),
            ],
          ),
        ),
      ],
    );
  }
}