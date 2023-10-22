import 'package:flutter_application_1/feature/warehouse/presntion/get_x/edit_warehouse_getx/edit_warehouse_controller/edit_warehouse_controller.dart';
import 'package:flutter_application_1/injection_container.dart';
import 'package:get/get.dart';

class EditwarehouseBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(WarehouseEditController(editWarehouseUseCase: sl()));
  }
}