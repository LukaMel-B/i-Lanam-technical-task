import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:i_lanam_task/app/modules/home/controllers/home_controller.dart';

class TimeSlotWidget extends GetView<HomeController> {
  final List<String> list;
  final void Function(String?) onPressed;
  final String title;
  final String value;
  const TimeSlotWidget(
      {super.key,
      required this.list,
      required this.onPressed,
      required this.value,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            letterSpacing: .3,
            fontSize: 15.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 9.h,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10.h)),
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              dropdownColor: Colors.white,
              value: value,
              icon: const Icon(Icons.expand_more_rounded),
              onChanged: (String? newValue) {
                onPressed(newValue);
              },
              items: list.map((location) {
                return DropdownMenuItem(
                  value: location,
                  child: Text(
                    location,
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
