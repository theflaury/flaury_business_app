import 'package:flaury_provider/app/utils/constants/sizes.dart';
import 'package:flaury_provider/app/widgets/apptext.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/space.dart';
import '../controllers/bookings_controller.dart';
import 'widgets/categories.dart';

class BookingsView extends GetView<BookingsController> {
  const BookingsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BigAppText(' My Bookings'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Categories
              Padding(
                padding: simPad(AppSizes.sm, AppSizes.md),
                child: const Wrap(
                  spacing: 8,
                  children: [
                    Categories(
                      data: 'Uploaded',
                    ),
                    Categories(
                      data: 'Completed',
                    ),
                    Categories(
                      data: 'Cancelled',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
