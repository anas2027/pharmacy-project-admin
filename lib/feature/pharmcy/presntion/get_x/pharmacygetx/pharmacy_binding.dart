import 'package:flutter_application_1/feature/pharmcy/presntion/get_x/pharmacygetx/pharmacy_controller.dart';
import 'package:flutter_application_1/injection_container.dart';
import 'package:get/get.dart';

class PharmacyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(pharmacycontroller(
        getPharmacyUsecase: sl(),
        deletePharmacyUseCase: sl(),
        accountRessetBalanceUseCase: sl(),
        addNewPharamacyWallet: sl()));
  }
}
