import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/auth/domain/entity/login_response.dart';
import 'package:flutter_application_1/feature/warehouse/domain/entity/get_warehouse.dart';
import 'package:flutter_application_1/feature/warehouse/domain/entity/warehouse_wallet.dart';
import 'package:flutter_application_1/feature/warehouse/domain/usecases/get_warehouse_wallet_usecase.dart';
import 'package:flutter_application_1/feature/warehouse/domain/usecases/resetBalanceWarehouse_usecase.dart';
import 'package:get/get.dart';

class WarehouseWalletController extends GetxController{
GetWarehouseWalletuseCase getWarehouseWalletuseCase;
ResetBalanceWarehouseUseCase resetBalanceWarehouseUseCase;
WarehouseWalletController({required this.getWarehouseWalletuseCase,required this.resetBalanceWarehouseUseCase});
  var data = Get.parameters;
  
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getWarehouseWallet(warehouseId: '${data['id']}');
  }
  List<WarehouseWallet> walletwarehouse =[ ];

  getWarehouseWallet({required String warehouseId})async{
    walletwarehouse.clear();
   var response =  await getWarehouseWalletuseCase(WarehouseId: warehouseId);
   response.fold((l) => Failure, (r) => walletwarehouse.addAll(r));
   update();
  }

  ressetuserAccount({required String warehouseId})async{
    await resetBalanceWarehouseUseCase(warehouseID:warehouseId);
    await getWarehouseWallet(warehouseId: warehouseId);
  }
}