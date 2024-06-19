// ignore: file_names
import 'package:flaury_provider/app/modules/signup/controllers/signup_controller.dart';
import 'package:flaury_provider/app/widgets/apptext.dart';
import 'package:flaury_provider/app/widgets/space.dart';
import 'package:flaury_provider/app/widgets/textfields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/theme/colors.dart';

class TeamandLocation extends StatelessWidget {
  final SignupController teamSizeController = Get.put(SignupController());
  TeamandLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MedAppText("What's your team size?",
            fontSize: 18.sp, fontWeight: FontWeight.bold),
        vSpace(10),
        Obx(() {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TeamSizeOption(
                title: "It's just me",
                value: 'just_me',
                groupValue: teamSizeController.selectedTeamSize.value,
                onChanged: (value) => teamSizeController.selectTeamSize(value!),
              ),
              TeamSizeOption(
                title: '2-5 people',
                value: '2_5',
                groupValue: teamSizeController.selectedTeamSize.value,
                onChanged: (value) => teamSizeController.selectTeamSize(value!),
              ),
              TeamSizeOption(
                title: '6-10 people',
                value: '6_10',
                groupValue: teamSizeController.selectedTeamSize.value,
                onChanged: (value) => teamSizeController.selectTeamSize(value!),
              ),
              TeamSizeOption(
                title: '11+ people',
                value: '11_plus',
                groupValue: teamSizeController.selectedTeamSize.value,
                onChanged: (value) => teamSizeController.selectTeamSize(value!),
              ),
            ],
          );
        }),
        vSpace(24.0),
        MedAppText('Set your location',
            fontSize: 18.sp, fontWeight: FontWeight.bold),
        vSpace(10), // Add space between elements for better layout
        SmallAppText(
            'Add your business location so your clients can easily find you.'),
        vSpace(10),
        const AppTextFormField(textInputAction: TextInputAction.done),
        Obx(() {
          return CheckboxListTile(
            activeColor: AppColors.primary,
            contentPadding: EdgeInsets.zero, // Remove default padding
            controlAffinity:
                ListTileControlAffinity.leading, // Align checkbox to the start
            value: teamSizeController.noBusinessAddress.value,
            onChanged: (value) =>
                teamSizeController.toggleNoBusinessAddress(value!),
            title: SmallAppText(
                "I don't have a business address (mobile and online services only)"),
          );
        }),
      ],
    );
  }
}

class TeamSizeOption extends StatelessWidget {
  final String title;
  final String value;
  final String groupValue;
  final ValueChanged<String?> onChanged;

  const TeamSizeOption({
    super.key,
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return RadioListTile<String>(
      activeColor: AppColors.primary,

      contentPadding: EdgeInsets.zero, // Remove default padding
      title: SmallAppText(title),
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
    );
  }
}
