import 'package:flutter_application_1/feature/warehouse/presntion/get_x/add_warehouse_getx/add_warehouse_controller.dart';
import 'package:flutter_application_1/injection_container.dart';
import 'package:get/get.dart';

class AddWarehouseBinding extends Bindings{
  
  

  @override
  void dependencies() {
  Get.put(AddWarehouseController(addWarehouseUseCase: sl()));
  }
  
}