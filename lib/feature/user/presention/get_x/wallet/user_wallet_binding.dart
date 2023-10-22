import 'package:flutter_application_1/feature/user/presention/get_x/wallet/user_wallet_controller.dart';
import 'package:flutter_application_1/injection_container.dart';
import 'package:get/get.dart';

class UserWalletBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(UserWalletController(addnewbalanceToUesrWalletUseCase: sl(),getUserWalletUseCase: sl(),ressetUserAcountUseCasse: sl()));
  }
}