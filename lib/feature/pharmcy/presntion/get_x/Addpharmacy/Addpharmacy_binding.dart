import 'package:flutter_application_1/feature/pharmcy/presntion/get_x/Addpharmacy/Addpharmacy_controller.dart';
import 'package:flutter_application_1/injection_container.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Addpharmacybinding extends Bindings {
  @override
  void dependencies() {
    Get.put( Addpharmacy_controller(addPharmacyUseCase: sl()));
  }
}