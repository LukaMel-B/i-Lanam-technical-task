import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HomeController extends GetxController {
  var collectionToday = true.obs;
  var collectionTomorrow = false.obs;
  var collectionDate = false.obs;
  DateTime todayDate = DateTime.now();
  DateTime tomorrowDate = DateTime.now().add(const Duration(days: 1));
  DateTime nextDateDate = DateTime.now().add(const Duration(days: 2));
  String today = '';
  String tomorrow = '';
  String nextDay = '';
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
    today = '${todayDate.day} ${DateFormat.MMM().format(todayDate)}';
    tomorrow = '${tomorrowDate.day} ${DateFormat.MMM().format(tomorrowDate)}';
    nextDay = '${nextDateDate.day} ${DateFormat.MMM().format(nextDateDate)}';
    super.onInit();
  }
}
