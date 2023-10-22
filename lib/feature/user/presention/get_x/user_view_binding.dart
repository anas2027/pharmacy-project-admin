import 'package:flutter_application_1/feature/user/presention/get_x/user_view_controller.dart';
import 'package:flutter_application_1/injection_container.dart';
import 'package:get/get.dart';

class UserViewBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => UserViewCController(getuserUseCase: sl(),addnewbalanceToUesrWalletUseCase: sl(),ressetUserAcountUseCasse: sl()));
  }
}