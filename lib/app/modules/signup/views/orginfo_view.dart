import 'package:flaury_provider/app/modules/signup/views/verification_view.dart';
import 'package:flaury_provider/app/modules/signup/views/widgets/imageselect.dart';
import 'package:flaury_provider/app/widgets/appbutton.dart';
import 'package:flaury_provider/app/widgets/apptext.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/space.dart';
import '../../../widgets/textfields.dart';
import 'widgets/TeamandLocation.dart';
import 'widgets/description.dart';

class OrginfoView extends GetView {
  const OrginfoView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: BigAppText('Orginization Info'),
            titleSpacing: 1,
            leading: const Icon(Icons.arrow_back_ios)),
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
                          Get.to(() => VerificationView());
                        }),
                  ]),
            ),
          ),
        ));
  }
}
