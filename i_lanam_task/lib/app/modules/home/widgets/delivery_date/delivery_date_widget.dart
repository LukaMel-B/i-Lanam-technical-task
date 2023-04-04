import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_lanam_task/app/modules/home/controllers/delivery_controller.dart';
import 'package:i_lanam_task/app/modules/home/widgets/choice_chip_widget.dart';

class DeliveryDateView extends GetView<DeliveryController> {
  const DeliveryDateView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomChoiceChip(
            isSelected: controller.deliveryToday.value,
            onPressed: () {
              controller.deliveryTomorrow.value = false;
              controller.deliveryToday.value = true;
              controller.deliveryDate.value = false;
            },
            subTitle: controller.todayDelivery.value,
            title: 'Today',
          ),
          CustomChoiceChip(
            isSelected: controller.deliveryTomorrow.value,
            onPressed: () {
              controller.deliveryTomorrow.value = true;
              controller.deliveryToday.value = false;
              controller.deliveryDate.value = false;
            },
            subTitle: controller.tomorrowDelivery.value,
            title: 'Tomorrow',
          ),
          CustomChoiceChip(
            isSelected: controller.deliveryDate.value,
            onPressed: () {
              controller.deliveryTomorrow.value = false;
              controller.deliveryToday.value = false;
              controller.deliveryDate.value = true;
            },
            subTitle: controller.nextDayDelivery.value,
            title: 'Next Date',
          )
        ],
      );
    });
  }
}
