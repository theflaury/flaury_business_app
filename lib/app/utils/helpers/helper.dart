import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/apptext.dart';

class AppHelpers {
  static void showLoader() {
    Get.dialog(
      AlertDialog(
        content: Row(
          children: [
            const CircularProgressIndicator(),
            const SizedBox(width: 10),
            BigAppText("Please wait..."),
          ],
        ),
      ),
    );
  }
  static void showSnackBar(String message) {
    Get.snackbar(
      "",
      message,
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  static void showAlert(String title, String message) {
    Get.dialog(
      AlertDialog(
        title: BigAppText(title),
        content: BigAppText(message),
        actions: [
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: BigAppText(
              "OK",
            ),
          ),
        ],
      ),
    );
  }

  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return "${text.substring(0, maxLength)}...";
    }
  }

  static Size screenSize() {
    return Get.size;
  }

  static double screenWidth() {
    return Get.width;
  }

  static double screenHeight() {
    return Get.height;
  }
}
