import 'package:flutter_application_1/feature/home_page/presention/get_x/home_getx/home_controller.dart';
import 'package:flutter_application_1/injection_container.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(HomeController(
      searchPharmaacyUseCase: sl(),
      searchUserUseCase: sl(),
      searchWarehouseUseCase: sl(),
      pharmacyConfirmedOrderUseCase: sl(),userConfirmedOrderUseCase: sl(),addCategoryUsecase: sl(),getCategoryUseCase: sl(),acceptUserOrderUseCase: sl(),acceptPharmacyOrderUseCase: sl(),getUserOrderUseCase: sl(), deletePharmacyUseCase: sl(),getPharmacyOrderDescriptionUseCase: sl(),getPharmacyOrderUseCase: sl(),deleteWarehouseUseCase: sl(),getPharmacyUsecase: sl(),getWarehouseUseCase: sl(),getmostWarehouseSoldUseCase: sl(),getWarehouseWalletuseCase: sl(),getuserUseCase: sl()));
  }
}