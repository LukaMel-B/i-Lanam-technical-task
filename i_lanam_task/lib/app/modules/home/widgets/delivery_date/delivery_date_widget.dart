import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_lanam_task/app/modules/home/controllers/home_controller.dart';
import 'package:i_lanam_task/app/modules/home/widgets/choice_chip_widget.dart';

class DeliveryDateView extends GetView<HomeController> {
  const DeliveryDateView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomChoiceChip(
            isSelected: controller.collectionToday.value,
            onPressed: () {
              controller.collectionTomorrow.value = false;
              controller.collectionToday.value = true;
              controller.collectionDate.value = false;
            },
            subTitle: controller.today,
            title: 'Today',
          ),
          CustomChoiceChip(
            isSelected: controller.collectionTomorrow.value,
            onPressed: () {
              controller.collectionTomorrow.value = true;
              controller.collectionToday.value = false;
              controller.collectionDate.value = false;
            },
            subTitle: controller.tomorrow,
            title: 'Tomorrow',
          ),
          CustomChoiceChip(
            isSelected: controller.collectionDate.value,
            onPressed: () {
              controller.collectionTomorrow.value = false;
              controller.collectionToday.value = false;
              controller.collectionDate.value = true;
            },
            subTitle: controller.nextDay,
            title: 'Next Date',
          )
        ],
      );
    });
  }
}
