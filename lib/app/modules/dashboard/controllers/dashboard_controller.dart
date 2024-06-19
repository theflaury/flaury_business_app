import 'package:flaury_provider/app/modules/chat/views/chat_view.dart';
import 'package:flaury_provider/app/modules/profile/views/profile_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../../../widgets/space.dart';
import '../../bookings/views/bookings_view.dart';
import '../views/dashboard_view.dart';

class DashboardController extends GetxController {
  RxInt bottomNavigationIndex = 0.obs;
  final carousalCurrentindex = 0.obs;

  void updatePageIndicator(index) {
    carousalCurrentindex.value = index;
  }

// Nav Bar
  Widget getActiveScreen(int index) {
    switch (index) {
      case 0:
        return Dashboard(controller: this);
      case 1:
        return const BookingsView();
      case 2:
        return const ChatView();
      case 3:
        return const ProfileView();
      default:
        return const SizedBox();
    }
  }

// Navigation
  List<BottomNavigationBarItem> bottomNavigationItems = [
    BottomNavigationBarItem(
      icon: Padding(
        padding: simPad(5, 6),
        child: const Icon(Icons.home_outlined),
      ),
      activeIcon: Padding(
        padding: simPad(5, 6),
        child: const Icon(Icons.home_filled),
      ),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Padding(
        padding: simPad(5, 6),
        child: const Icon(Icons.calendar_month_outlined),
      ),
      activeIcon: Padding(
        padding: simPad(5, 6),
        child: const Icon(Icons.calendar_month),
      ),
      label: 'Bookings',
    ),
    BottomNavigationBarItem(
      icon: Padding(
        padding: simPad(5, 6),
        child: const Icon(Iconsax.message_2_copy),
      ),
      activeIcon: Padding(
        padding: simPad(5, 6),
        child: const Icon(Iconsax.message_2),
      ),
      label: 'Chat',
    ),
    BottomNavigationBarItem(
      icon: Padding(
        padding: simPad(5, 6),
        child: const Icon(Icons.person_2_outlined),
      ),
      activeIcon: Padding(
        padding: simPad(5, 6),
        child: const Icon(Icons.person_2_sharp),
      ),
      label: 'Profile',
    ),
  ];
}
