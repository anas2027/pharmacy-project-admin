import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/home_page/domain/entity/get_pharamacy_order.dart';
import 'package:flutter_application_1/feature/home_page/domain/entity/get_pharamacy_order_detail.dart';
import 'package:flutter_application_1/feature/home_page/domain/entity/get_user_detail_order.dart';
import 'package:flutter_application_1/feature/home_page/domain/entity/get_user_order.dart';
import 'package:flutter_application_1/feature/home_page/domain/usecases/accept_order/accept_user_order.dart';
import 'package:flutter_application_1/feature/home_page/domain/usecases/get_pharamacy_order/get_pharamacy_order.dart';
import 'package:flutter_application_1/feature/home_page/domain/usecases/get_pharamacy_order_descrption/get_pharamacy_order_descrption_usecase.dart';
import 'package:flutter_application_1/feature/home_page/domain/usecases/get_user_order_descrption.dart';
import 'package:flutter_application_1/feature/home_page/domain/usecases/get_user_order_usecase.dart';
import 'package:get/get.dart';

class UserOrdercontroller extends GetxController {
  AcceptUserOrderUseCase acceptUserOrderUseCase;
  GetUserOrderDescrptionUseCase getUserOrderDescrptionUseCase;
  UserOrdercontroller({required this.acceptUserOrderUseCase,required this.getUserOrderDescrptionUseCase});
 
 var data = Get.parameters;
@override
  void onInit() {
    super.onInit();
  getuserOrderdescrption(orderId: '${data['id']}');
    
  }
 

 
 ///////////////////////////get user order descrption/////////////////////////////
List<UserOrderdescrption> userorder=[];
 getuserOrderdescrption({required String orderId})async{
  userorder.clear();
   var response= await getUserOrderDescrptionUseCase(orderId: orderId);
 response.fold((l) => Failure, (r) =>userorder.addAll(r));
 update();
 }
 
   // userorder
  AcceptUserOrder({required String orderId})async{
     acceptUserOrderUseCase(orderId:  orderId);
    
  }
}
