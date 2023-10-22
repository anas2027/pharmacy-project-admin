import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/home_page/domain/entity/get_pharamacy_order.dart';
import 'package:flutter_application_1/feature/home_page/domain/entity/get_pharamacy_order_detail.dart';
import 'package:flutter_application_1/feature/home_page/domain/usecases/accept_order/accept_pharmacy_order.dart';
import 'package:flutter_application_1/feature/home_page/domain/usecases/get_pharamacy_order/get_pharamacy_order.dart';
import 'package:flutter_application_1/feature/home_page/domain/usecases/get_pharamacy_order_descrption/get_pharamacy_order_descrption_usecase.dart';
import 'package:get/get.dart';

class PharmacyOrderControler extends GetxController{
  GetPharmacyOrderDescriptionUseCase getPharmacyOrderDescriptionUseCase;
  AcceptPharmacyOrderUseCase acceptPharmacyOrderUseCase;
  PharmacyOrderControler({required this.acceptPharmacyOrderUseCase,required this.getPharmacyOrderDescriptionUseCase});
 
 var data = Get.parameters;
@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getDescrptionOrder(orderId: '${data['id']}');

    
  }
  
   
      // pharamacy order details
      List<PharmacyOrderDetail> orderDescrption = [];
       Future getDescrptionOrder({required String orderId})async{
        List<PharmacyOrderDetail> refrech = [];
        orderDescrption = refrech;
        var response = await getPharmacyOrderDescriptionUseCase(orderId: orderId);
        response.fold((l) => Failure, (r) => orderDescrption.addAll(r));
        print('sdawawd $orderDescrption');
        update();
      }
   Future AcceptPharmacyOrder({required String orderId})async{
     acceptPharmacyOrderUseCase(orderId: orderId);
   }
}