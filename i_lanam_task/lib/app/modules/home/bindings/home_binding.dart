import 'package:get/get.dart';
import 'package:i_lanam_task/app/modules/home/controllers/delivery_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<DeliveryController>(
      () => DeliveryController(),
    );
  }
}
