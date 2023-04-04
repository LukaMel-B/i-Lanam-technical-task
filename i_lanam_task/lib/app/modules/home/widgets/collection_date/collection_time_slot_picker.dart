import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_lanam_task/app/modules/home/controllers/home_controller.dart';
import 'package:i_lanam_task/app/modules/home/controllers/list_controller.dart';
import 'package:i_lanam_task/app/modules/home/widgets/time_slot_widget.dart';

class CollectionTimePicker extends GetView<HomeController> {
  const CollectionTimePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GetBuilder(builder: (HomeController controller) {
          return TimeSlotWidget(
            list: controller.timeSlot,
            onPressed: controller.updateCollectionTimeSlot,
            value: controller.timeSlotValue.value,
            title: 'Select time',
          );
        }),
        Obx(() {
          return (controller.timeSlotValue.value == 'Afternoon')
              ? TimeSlotWidget(
                  list: controller.collectTimeAfternoon,
                  onPressed: controller.updateCollectionTimeAfternoon,
                  value: controller.collectTimeSlotAfternoon.value,
                  title: 'Select slot',
                )
              : TimeSlotWidget(
                  list: controller.collectTimeMorning,
                  onPressed: controller.updateCollectionTimeMorning,
                  value: controller.collectTimeSlotMorning.value,
                  title: 'Select slot',
                );
        }),
      ],
    );
  }
}
