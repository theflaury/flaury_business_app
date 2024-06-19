import 'package:flaury_provider/app/modules/signup/views/verification_view.dart';
import 'package:flaury_provider/app/modules/signup/views/widgets/imageselect.dart';
import 'package:flaury_provider/app/widgets/appbutton.dart';
import 'package:flaury_provider/app/widgets/apptext.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/space.dart';
import '../../../widgets/textfields.dart';
import '../controllers/signup_controller.dart';
import 'widgets/TeamandLocation.dart';
import 'widgets/description.dart';

class OrginfoView extends GetView {
  OrginfoView({super.key});

  final controller = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: BigAppText('Organisation Info'),
            titleSpacing: 1,
            leading: IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Icons.arrow_back_ios))),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: simPad(15, 15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Business Name
                    const AppTextFormField(
                      textInputAction: TextInputAction.next,
                      hint: 'Enter Business Name',
                      label: 'Business Name',
                    ),
                    vSpace(15),
                    // Description
                    const Description(
                        label: 'Description',
                        hint:
                            'Share a bit about your skills, work experience, and about your expertise.'),
                    vSpace(15),
                    // Staff Size and Location
                    TeamandLocation(),
                    vSpace(15),
                    // Image
                    ImageSelector(),
                    vSpace(50),
                    // Continue
                    AppElevatedButton(
                        title: 'Continue',
                        onPressed: () {
                          controller.canProceed()
                              ? Get.to(VerificationView())
                              : Get.snackbar('Missing Fields',
                                  'Please fill in: ${controller.missingFields()}');
                        }),
                  ]),
            ),
          ),
        ));
  }
}
