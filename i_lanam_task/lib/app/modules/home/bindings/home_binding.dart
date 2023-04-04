import 'package:get/get.dart';
import 'package:i_lanam_task/app/modules/home/controllers/list_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<DateController>(
      () => DateController(),
    );
  }
}
