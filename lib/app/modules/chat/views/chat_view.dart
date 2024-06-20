import 'package:flaury_provider/app/widgets/textfields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../../../utils/constants/images.dart';
import '../../../utils/theme/colors.dart';
import '../../../widgets/apptext.dart';
import '../../../widgets/space.dart';
import '../controllers/chat_controller.dart';
import 'widgets/chatwidget.dart';

class ChatView extends GetView<ChatController> {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BigAppText('Chat'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: simPad(15, 15),
              child: const AppTextFormField(
                  textInputAction: TextInputAction.next,
                  hint: 'Search',
                  prefixIcon: Icon(Icons.search)),
            ),
            vSpace(20),
            Expanded(
              flex: 2,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const ChatWidget(
                    title: 'Pella Tehilah',
                    subtitle: 'Hello, how are you',
                    image: AppImages.profileimg,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
