import 'package:flaury_provider/app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../utils/theme/colors.dart';
import '../../../../widgets/apptext.dart';
import '../../../../widgets/space.dart';
import 'msg.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  final String title;
  final String subtitle;
  final String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
       
        Get.to(() =>  Chat());
      },
      child: Center(
        child: Container(
          padding: simPad(0, 20),
          width: double.infinity,
          height: 70.h,
          decoration: const BoxDecoration(
            color: AppColors.white,
          ),
          // Inner container with the icon
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 50.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover),
                ),
              ),
              hSpace(AppSizes.md),
              // header text and description
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 220.h,
                    child: BigAppText(
                      title,
                      fontSize: 20,
                    ),
                  ),
                  vSpace(5),
                  SizedBox(
                    width: 220.h,
                    child: SmallAppText(
                      subtitle,
                      color: AppColors.grey,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Message count
                  CircleAvatar(
                      backgroundColor: AppColors.primary,
                      radius: 10,
                      child: Center(
                        child: SmallAppText(
                          '2',
                          color: AppColors.white,
                          fontSize: 12,
                        ),
                      )),
                  vSpace(AppSizes.sm),
                  // Time
                  SmallAppText(
                    '11:00 AM',
                    color: AppColors.grey,
                    fontSize: 15,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
