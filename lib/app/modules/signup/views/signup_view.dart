import 'package:flaury_provider/app/modules/signup/views/category_view.dart';
import 'package:flaury_provider/app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../../../routes/app_pages.dart';
import '../../../utils/theme/colors.dart';
import '../../../widgets/appbutton.dart';
import '../../../widgets/apptext.dart';
import '../../../widgets/space.dart';
import '../../../widgets/textfields.dart';
import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: simPad(AppSizes.md, AppSizes.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BigAppText(
                'Create Account',
              ),
              vSpace(AppSizes.xs),
              SmallAppText(
                'Enter your  email and password to register your account',
                color: AppColors.grey,
              ),
              vSpace(AppSizes.lg),
              Form(
                //key: controller.formKey,
                child: Wrap(
                  runSpacing: 10.h,
                  children: [
                    // Name
                    const AppTextFormField(
                      textInputAction: TextInputAction.next,
                      hint: 'Enter Name',
                      label: 'Name',
                    ),
                    // Email
                    const AppTextFormField(
                      textInputAction: TextInputAction.next,
                      hint: 'Enter Email Address',
                      label: 'Email',
                      // textInputAction: null,
                      // validator: (email) {
                      //   return FormValidator.isValidEmail(email);
                      // },
                      // controller: controller.emailController,
                    ),
                    // Phone number
                    const AppPhoneTextField(
                      label: 'Phone Number',
                    ),
                    // Password
                    AppTextFormField(
                      hint: 'Enter Password',
                      label: 'Password',
                      textInputAction: TextInputAction.next,
                      // obscureText: controller.isPasswordVisible.value,
                      // validator: (pwd) {
                      //   return FormValidator.isValidPassword(pwd);
                      // },
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Iconsax.eye_slash_copy,
                            color: AppColors.grey200),
                      ),
                    ),
                  ],
                ),
              ),
              vSpace(AppSizes.lg * 1.5),
              AppElevatedButton(
                title: 'Continue',
                onPressed: () {
                  Get.to(() => CategoryView());
                },
              ),
              vSpace(AppSizes.lg * 3),
              // Already using Flaury
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmallAppText(
                    'Already have an account?',
                    color: AppColors.grey,
                    fontSize: 17.sp,
                  ),
                  hSpace(AppSizes.xs),
                  GestureDetector(
                    onTap: () => Get.toNamed(Routes.LOGIN),
                    child: SmallAppText(
                      'Login',
                      color: AppColors.primary,
                      fontSize: 17.sp,
                    ),
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
