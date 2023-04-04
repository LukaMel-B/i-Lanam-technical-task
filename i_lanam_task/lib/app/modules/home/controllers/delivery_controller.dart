import 'package:get/get.dart';
import 'package:i_lanam_task/app/modules/home/controllers/home_controller.dart';
import 'package:intl/intl.dart';

class DeliveryController extends GetxController {
  HomeController controller = Get.find();
  var deliveryToday = true.obs;
  var deliveryTomorrow = false.obs;
  var deliveryDate = false.obs;
  DateTime todayDateDelivery = DateTime.now().add(const Duration(days: 1));
  DateTime nextDateDateDelivery = DateTime.now().add(const Duration(days: 2));
  DateTime tomorrowDateDelivery = DateTime.now().add(const Duration(days: 3));

  onUpdateDate(DateTime date) {
    todayDateDelivery = date.add(const Duration(days: 1));
    nextDateDateDelivery = date.add(const Duration(days: 2));
    tomorrowDateDelivery = date.add(const Duration(days: 3));
    todayDelivery.value =
        '${date.add(const Duration(days: 1)).day} ${DateFormat.MMM().format(date.add(const Duration(days: 1)))}';
    tomorrowDelivery.value =
        '${date.add(const Duration(days: 2)).day} ${DateFormat.MMM().format(date.add(const Duration(days: 2)))}';
    nextDayDelivery.value =
        '${date.add(const Duration(days: 3)).day} ${DateFormat.MMM().format(date.add(const Duration(days: 3)))}';
    update();
  }

  var todayDelivery = ''.obs;
  var tomorrowDelivery = ''.obs;
  var nextDayDelivery = ''.obs;
  RxString timeSlotValue = 'Morning'.obs;
  RxString collectTimeSlotMorning = '7:00am - 8:00am'.obs;
  RxString collectTimeSlotAfternoon = '12:00pm - 1:00pm'.obs;
  var timeSlot = [
    'Morning',
    'Afternoon',
  ];
  var collectTimeMorning = [
    '7:00am - 8:00am',
    '8:00am - 9:00am',
    '9:00am - 10:00am',
    '10:00am - 11:00am',
    '11:00am - 12:00am',
  ];

  var collectTimeAfternoon = [
    '12:00pm - 1:00pm',
    '1:00pm - 2:00pm',
    '2:00pm - 3:00pm',
    '3:00pm - 4:00pm',
    '4:00pm - 5:00pm',
    '5:00pm - 6:00pm',
    '6:00pm - 7:00pm',
  ];
  updateCollectionTimeSlot(String? newValue) {
    timeSlotValue.value = newValue!;
    update();
  }

  updateCollectionTimeMorning(String? newValue) {
    collectTimeSlotMorning.value = newValue!;
    update();
  }

  updateCollectionTimeAfternoon(String? newValue) {
    collectTimeSlotAfternoon.value = newValue!;
    update();
  }

  @override
  void onInit() {
    todayDelivery.value =
        '${controller.todayDate.add(const Duration(days: 1)).day} ${DateFormat.MMM().format(controller.todayDate.add(const Duration(days: 1)))}';
    tomorrowDelivery.value =
        '${controller.todayDate.add(const Duration(days: 2)).day} ${DateFormat.MMM().format(controller.todayDate.add(const Duration(days: 2)))}';
    nextDayDelivery.value =
        '${controller.todayDate.add(const Duration(days: 1)).day} ${DateFormat.MMM().format(controller.todayDate.add(const Duration(days: 1)))}';

    super.onInit();
  }
}
