import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../utils/theme/colors.dart';
import 'apptext.dart';
import 'space.dart';

class CustomDropdown extends StatefulWidget {
  final double? width;
  final double? height;
  final List<String> items;
  final String? label;
  final ValueChanged<String> onChanged;

  const CustomDropdown({
    super.key,
    this.width,
    this.height,
    required this.items,
    this.label,
    this.onChanged = _defaultOnChanged,
  });

  static void _defaultOnChanged(String value) {}

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String? _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.items.first;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: widget.label != null,
          child: MedAppText(
            widget.label ?? '',
            color: AppColors.black,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        vSpace(10),
        Container(
          width: widget.width ?? Get.width,
          height: widget.height ?? 60.h,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.grey100, width: 1.5),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              isExpanded: true,
              padding: simPad(0, 15),
              value: _selectedValue,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedValue = newValue;
                  widget.onChanged(newValue!);
                });
              },
              items: widget.items.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: SmallAppText(value),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
