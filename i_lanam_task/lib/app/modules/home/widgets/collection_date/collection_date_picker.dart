import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_lanam_task/app/modules/home/controllers/delivery_controller.dart';
import 'package:i_lanam_task/app/modules/home/controllers/home_controller.dart';
import 'package:i_lanam_task/app/modules/home/widgets/choice_chip_widget.dart';

class CollectionDateView extends GetView<HomeController> {
  const CollectionDateView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      DeliveryController deliveryController = Get.find();
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomChoiceChip(
            isSelected: controller.collectionToday.value,
            onPressed: () {
              controller.collectionTomorrow.value = false;
              controller.collectionToday.value = true;
              controller.collectionDate.value = false;
              deliveryController.onUpdateDate(controller.todayDate);
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
              deliveryController.onUpdateDate(controller.tomorrowDate);
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
              deliveryController.onUpdateDate(controller.nextDateDate);
            },
            subTitle: controller.nextDay,
            title: 'Next Date',
          )
        ],
      );
    });
  }
}
