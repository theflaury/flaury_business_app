import 'package:flaury_provider/app/modules/signup/controllers/signup_controller.dart';
import 'package:flaury_provider/app/widgets/appbutton.dart';
import 'package:flaury_provider/app/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../widgets/apptext.dart';
import '../../../widgets/dropdown.dart';
import 'widgets/imageselect.dart';

class VerificationView extends GetView {
  VerificationView({super.key});

  final SignupController controller = Get.put(SignupController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: BigAppText('Verification'),
            titleSpacing: 1,
            leading: const Icon(Icons.arrow_back_ios)),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: simPad(15, 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Little text
                  SmallAppText(
                      'For the safety of our customers, you are required to submit either of these documents for verification.'),
                  vSpace(20),
                  // Vreification Dropdown
                  const CustomDropdown(
                    label: 'Verification Type',
                    items: [
                      'Driving License',
                      'Address Proof',
                      'NIN',
                      'Passport'
                    ],
                  ),
                  vSpace(20),
                  MedAppText('Upload ID',
                      fontSize: 18.sp, fontWeight: FontWeight.bold),
                  vSpace(20),
                  // Upload Id
                  ImageSelector(),
                  vSpace(Get.height * 0.30),
                  // Continue Button
                  AppElevatedButton(
                      title: 'Continue',
                      onPressed: () {
                        controller.showSuccessDialog();
                      }),
                ],
              ),
            ),
          ),
        ));
  }
}
