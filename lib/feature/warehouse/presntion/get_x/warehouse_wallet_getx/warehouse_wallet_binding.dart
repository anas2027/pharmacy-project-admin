import 'package:flutter_application_1/feature/warehouse/presntion/get_x/warehouse_wallet_getx/warehouse_wallet_controller.dart';
import 'package:flutter_application_1/injection_container.dart';
import 'package:get/get.dart';

class WarehouseWalletBinding extends Bindings{
  @override
  void dependencies() {
   Get.put(WarehouseWalletController(
    getWarehouseWalletuseCase: sl(),
    resetBalanceWarehouseUseCase: sl()
   ));
  }
}