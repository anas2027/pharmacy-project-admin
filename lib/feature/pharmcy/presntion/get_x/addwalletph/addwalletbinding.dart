import 'package:flutter_application_1/feature/pharmcy/presntion/get_x/addwalletph/addwalletcontroller.dart';
import 'package:flutter_application_1/injection_container.dart';
import 'package:get/get.dart';

class addwalletphbinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(Addwalletcontrollerph(accountRessetBalanceUseCase: sl(),addNewPharamacyWallet: sl(),getPharmacyWaletUseCase: sl()));
  }

}