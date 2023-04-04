import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:i_lanam_task/app/modules/home/controllers/home_controller.dart';
import 'package:i_lanam_task/app/modules/home/views/delivery_view.dart';
import 'package:i_lanam_task/app/modules/home/widgets/collection_date/collection_date_picker.dart';
import 'package:i_lanam_task/app/modules/home/widgets/collection_date/collection_time_slot_picker.dart';
import 'package:i_lanam_task/app/modules/home/widgets/continue_button.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      appBar: AppBar(
        title: const Text('Delivery App'),
        centerTitle: true,
        backgroundColor: const Color(0xff3A72D2),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
        physics: const BouncingScrollPhysics(),
        children: [
          spacer(30.h),
          header('Select Collection Date & Time'),
          spacer(10.h),
          const CollectionDateView(),
          spacer(20.h),
          const CollectionTimePicker(),
          spacer(40.h),
          const DeliveryView()
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const CustomButton(),
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
