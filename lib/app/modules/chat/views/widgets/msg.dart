import 'package:flaury_provider/app/utils/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widgets/apptext.dart';
import '../../../../widgets/space.dart';
import '../../../../widgets/textfields.dart';
import '../../controllers/chat_controller.dart';

class Chat extends StatelessWidget {
  Chat({
    super.key,
  });

  final ChatController chatController = Get.put(ChatController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BigAppText('Pella Tehilah'),
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: SafeArea(
        child: Padding(
          padding: simPad(15, 15),
          child: Column(
            children: [
              Expanded(
                child: Obx(
                  () => ListView.builder(
                    itemCount: chatController.messages.length,
                    itemBuilder: (context, index) {
                      final message = chatController.messages[index];
                      return Align(
                        alignment: message.isSentByMe
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: message.isSentByMe
                                ? AppColors.primary
                                : AppColors.primarylight,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: SmallAppText(message.text,
                              color: AppColors.white),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: NormalAppTextFormField(
                      controller: chatController.messageController,
                      hint: 'Type a message',
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: chatController.sendMessage,
                  ),
                  IconButton(
                    icon: const Icon(Icons.image),
                    onPressed: chatController.pickImage,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
