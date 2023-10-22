import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/warehouse/domain/entity/get_warehouse.dart';
import 'package:flutter_application_1/feature/warehouse/domain/usecases/delete_warehouse_usecase.dart';
import 'package:flutter_application_1/feature/warehouse/domain/usecases/get_warehouse_usecase/get_warehouse_usecase.dart';
import 'package:flutter_application_1/feature/warehouse/domain/usecases/resetBalanceWarehouse_usecase.dart';
import 'package:get/get.dart';

class Warehousecontroller extends GetxController {
  DeleteWarehouseUseCase deleteWarehouseUseCase;
  ResetBalanceWarehouseUseCase resetBalanceWarehouseUseCase;
  GetWarehouseUseCase getWarehouseUseCase;
  Warehousecontroller(
      {required this.getWarehouseUseCase,
      required this.deleteWarehouseUseCase,
      required this.resetBalanceWarehouseUseCase});
  var index = 0;
  bool isloading = true;

  var currentIndex = 2.obs;
  void changePage(int index) {
    currentIndex.value = index;
    if (index == 0) {
      Get.offAllNamed('/pharmacy');
    } else if (index == 1) {
      Get.offAllNamed('/HomePage');
    } else {}
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getWarehouse();
  }

  List<Warehouse> warehouse = [];
  Future getWarehouse() async {
    List<Warehouse> refresh = [];
    warehouse = refresh;
    var response = await getWarehouseUseCase();
    response.fold((l) => Failure, (r) => warehouse.addAll(r));
    update();
  }

  DeleteWarehouseFun({required String warehouseId}) async {
    return await deleteWarehouseUseCase(warehouseId: warehouseId);
  }

  WarehouseRessetBalance({required String warehouseId}) async {
  return await WarehouseRessetBalance(warehouseId: warehouseId);
  }
}
