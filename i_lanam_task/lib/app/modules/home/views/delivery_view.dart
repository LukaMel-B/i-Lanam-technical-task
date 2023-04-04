import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:i_lanam_task/app/modules/home/controllers/home_controller.dart';

class DeliveryView extends GetView<HomeController> {
  const DeliveryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        header('Select Delivery Date & Time'),
        spacer(10.h),
      ],
    );
  }

  Text header(String title) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.black,
        letterSpacing: .3,
        fontSize: 17.sp,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  SizedBox spacer(double height) {
    return SizedBox(
      height: height,
    );
  }
}
