import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../../models/chat/chatmodel.dart';

class ChatController extends GetxController {
  var messages = <Message>[].obs;
  var messageController = TextEditingController();
  final ImagePicker _picker = ImagePicker();

  // Send message
  void sendMessage() {
    if (messageController.text.trim().isNotEmpty) {
      messages
          .add(Message(text: messageController.text.trim(), isSentByMe: true));
      messageController.clear();
    }
  }

  // Pick image
  Future<void> pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      messages.add(Message(text: pickedFile.path, isSentByMe: true));
    }
  }
}
