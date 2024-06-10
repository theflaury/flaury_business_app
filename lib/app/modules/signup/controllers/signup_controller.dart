import 'package:flaury_provider/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../widgets/dialog.dart';
import '../../../widgets/space.dart';

class SignupController extends GetxController {
  // Select Service Category
  var selectedService = ''.obs;

  void selectService(String service) {
    selectedService.value = service;
  }

// Pick Image
  final count = 0.obs;
  var selectedImagePath = ''.obs;

  Future<void> pickImage(ImageSource source) async {
    /// Picks an image from the specified [source].
    ///
    /// The [source] parameter determines where the image will be picked from,
    /// such as the photo library or the camera.
    ///
    /// This function returns a `Future<void>` that completes when the image
    /// picking process is finished. If an image is successfully picked, the
    /// `selectedImagePath` observable will be updated with the path of the picked
    /// image. If no image is selected, a snackbar with an error message will be
    /// displayed at the bottom of the screen. If an error occurs during the image
    /// picking process, a snackbar with an error message will be displayed at the
    /// top of the screen.
    ///
    try {
      final pickedFile = await ImagePicker().pickImage(source: source);
      if (pickedFile != null) {
        selectedImagePath.value = pickedFile.path;
      } else {
        Get.snackbar('Error', 'No image selected',
            snackPosition: SnackPosition.BOTTOM);
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to pick image: $e',
          snackPosition: SnackPosition.TOP);
    }
  }

  void showPicker(BuildContext context) {
    /// Shows a modal bottom sheet with options to select an image from the photo library or camera.
    ///
    /// The [context] parameter is the build context used to show the bottom sheet.
    ///
    /// This function does not return anything.
    Get.bottomSheet(
      BottomSheet(
        onClosing: () {},
        builder: (context) => SafeArea(
          child: Padding(
            padding: simPad(10, 15),
            child: Wrap(
              children: [
                ListTile(
                  leading: const Icon(Icons.photo_library),
                  title: const Text('Gallery'),
                  onTap: () {
                    pickImage(ImageSource.gallery);
                    Get.back();
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.photo_camera),
                  title: const Text('Camera'),
                  onTap: () {
                    pickImage(ImageSource.camera);
                    Get.back();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      barrierColor: Colors.black.withOpacity(0.5),
    );
  }

  // Team Size and Location
  var selectedTeamSize = ''.obs;
  var location = ''.obs;
  var noBusinessAddress = false.obs;

  void selectTeamSize(String teamSize) {
    selectedTeamSize.value = teamSize;
  }

  void toggleNoBusinessAddress(bool value) {
    noBusinessAddress.value = value;
  }

  // Success Dialog
  void showSuccessDialog() {
    Get.dialog(
      const SuccessDialog(),
      barrierDismissible: false,
    );
    Future.delayed(const Duration(seconds: 5), () {
      Get.offNamed(Routes.DASHBOARD); // Navigate to the next page
    });
  }
}
