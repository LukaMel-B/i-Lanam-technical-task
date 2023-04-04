import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:i_lanam_task/app/modules/home/controllers/home_controller.dart';
import 'package:i_lanam_task/app/modules/home/widgets/choice_chip_widget.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        appBar: AppBar(
          title: const Text('Delivery App'),
          centerTitle: true,
          backgroundColor: Color(0xff3A72D2),
        ),
        body: Obx(() {
          return ListView(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
            physics: BouncingScrollPhysics(),
            children: [
              SizedBox(
                height: 15.h,
              ),
              Text(
                'Select collection Date & Time',
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: .3,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 9.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomChoiceChip(
                    isSelected: controller.collectionToday.value,
                    onPressed: () {
                      controller.collectionTomorrow.value = false;
                      controller.collectionToday.value = true;
                      controller.collectionDate.value = false;
                    },
                    subTitle: '20 Dec',
                    title: 'Today',
                  ),
                  CustomChoiceChip(
                    isSelected: controller.collectionTomorrow.value,
                    onPressed: () {
                      controller.collectionTomorrow.value = true;
                      controller.collectionToday.value = false;
                      controller.collectionDate.value = false;
                    },
                    subTitle: '21 Dec',
                    title: 'Tomorrow',
                  ),
                  CustomChoiceChip(
                    isSelected: controller.collectionDate.value,
                    onPressed: () {
                      controller.collectionTomorrow.value = false;
                      controller.collectionToday.value = false;
                      controller.collectionDate.value = true;
                    },
                    subTitle: '22 Dec',
                    title: 'Select Date',
                  )
                ],
              ),
            ],
          );
        }));
  }
}
