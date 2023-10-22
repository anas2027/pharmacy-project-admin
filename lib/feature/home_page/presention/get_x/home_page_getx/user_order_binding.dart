import 'package:flutter_application_1/feature/home_page/presention/get_x/home_page_getx/user_order_controller.dart';
import 'package:flutter_application_1/injection_container.dart';
import 'package:get/get.dart';
class OrderUserBinding extends Bindings {
  void dependencies() {
    Get.put(
        UserOrdercontroller(getUserOrderDescrptionUseCase: sl(),acceptUserOrderUseCase: sl()));
  }
}