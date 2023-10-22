import 'package:flutter_application_1/feature/home_page/presention/get_x/home_page_getx/pharmacy_order_controller.dart';
import 'package:flutter_application_1/feature/home_page/presention/pages/pharmacy_order.dart';
import 'package:flutter_application_1/injection_container.dart';
import 'package:get/get.dart';

class PharmacyOrderBinding extends Bindings{
  @override
  void dependencies() {
Get.lazyPut(() => PharmacyOrderControler(
  acceptPharmacyOrderUseCase: sl(),
  getPharmacyOrderDescriptionUseCase: sl(),
));
  }

}