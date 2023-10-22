import 'package:flutter_application_1/feature/warehouse/presntion/get_x/warehouse_getx/warehouse_controller/warehouse_controller.dart';
import 'package:flutter_application_1/injection_container.dart';
import 'package:get/get.dart';

class WarehouseBinding extends Bindings{
  @override
  void dependencies() {
   Get.put(Warehousecontroller(getWarehouseUseCase: sl(),deleteWarehouseUseCase: sl(), resetBalanceWarehouseUseCase: sl(),));
  }
}