


import 'package:flutter_application_1/feature/pharmcy/presntion/get_x/editpharmacy/editparmacycontroller.dart';
import 'package:flutter_application_1/injection_container.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class Edit_pharmacy_binding extends Bindings{
   @override
  void dependencies() {
    Get.put(Editpharmacycontroller(editpharamcyUseCase: sl()));
  }
}