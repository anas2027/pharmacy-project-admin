import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/home_page/domain/entity/category.dart';
import 'package:flutter_application_1/feature/home_page/domain/entity/get_pharamacy_order.dart';
import 'package:flutter_application_1/feature/home_page/domain/entity/get_user_order.dart';
import 'package:flutter_application_1/feature/home_page/domain/usecases/accept_order/accept_pharmacy_order.dart';
import 'package:flutter_application_1/feature/home_page/domain/usecases/accept_order/accept_user_order.dart';
import 'package:flutter_application_1/feature/home_page/domain/usecases/categoy/add_category_usecase.dart';
import 'package:flutter_application_1/feature/home_page/domain/usecases/categoy/get_category_usecase.dart';
import 'package:flutter_application_1/feature/home_page/domain/usecases/get_most_warehouse_sold_usecase.dart';
import 'package:flutter_application_1/feature/home_page/domain/usecases/get_pharamacy_order/get_pharamacy_order.dart';
import 'package:flutter_application_1/feature/home_page/domain/usecases/get_pharamacy_order_descrption/get_pharamacy_order_descrption_usecase.dart';
import 'package:flutter_application_1/feature/home_page/domain/usecases/get_user_order_usecase.dart';
import 'package:flutter_application_1/feature/home_page/domain/usecases/order_confiremd_usecase/pharmacy_order_confirmed.dart';
import 'package:flutter_application_1/feature/home_page/domain/usecases/order_confiremd_usecase/user_order_confrimed.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/entity/pharmcy.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/usecase/delete_pharamacy_usecase.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/usecase/get_pharmcy_usecase.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/usecase/search_pharmacy_usecase.dart';
import 'package:flutter_application_1/feature/pharmcy/presntion/widget/widget.dart';
import 'package:flutter_application_1/feature/user/domain/entity/user.dart';
import 'package:flutter_application_1/feature/user/domain/user_usecase/get_user_usecase.dart';
import 'package:flutter_application_1/feature/user/domain/user_usecase/search_user_usecase.dart';
import 'package:flutter_application_1/feature/warehouse/domain/entity/get_warehouse.dart';
import 'package:flutter_application_1/feature/warehouse/domain/entity/warehouse_wallet.dart';
import 'package:flutter_application_1/feature/warehouse/domain/usecases/delete_warehouse_usecase.dart';
import 'package:flutter_application_1/feature/warehouse/domain/usecases/get_warehouse_usecase/get_warehouse_usecase.dart';
import 'package:flutter_application_1/feature/warehouse/domain/usecases/get_warehouse_wallet_usecase.dart';
import 'package:flutter_application_1/feature/warehouse/domain/usecases/search_warehousee_usecase.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  GetmostWarehouseSoldUseCase getmostWarehouseSoldUseCase;
  GetWarehouseWalletuseCase getWarehouseWalletuseCase;
  GetuserUseCase getuserUseCase;
  GetWarehouseUseCase getWarehouseUseCase;
  DeleteWarehouseUseCase deleteWarehouseUseCase;
  DeletePharmacyUseCase deletePharmacyUseCase;
  GetPharmacyUsecase getPharmacyUsecase;
  GetPharmacyOrderUseCase getPharmacyOrderUseCase;
  GetPharmacyOrderDescriptionUseCase getPharmacyOrderDescriptionUseCase;
  GetUserOrderUseCase getUserOrderUseCase;
  AcceptPharmacyOrderUseCase acceptPharmacyOrderUseCase;
  AcceptUserOrderUseCase acceptUserOrderUseCase;
  GetCategoryUseCase getCategoryUseCase;
  PharmacyConfirmedOrderUseCase pharmacyConfirmedOrderUseCase;
  UserConfirmedOrderUseCase userConfirmedOrderUseCase;
  SearchUserUseCase searchUserUseCase;
  SearchPharmaacyUseCase searchPharmaacyUseCase;
  SearchWarehouseUseCase searchWarehouseUseCase;
  AddCategoryUsecase addCategoryUsecase;
  HomeController({
    required this.searchPharmaacyUseCase,
    required this.searchUserUseCase,
    required this.searchWarehouseUseCase,
    required this.userConfirmedOrderUseCase,required this.pharmacyConfirmedOrderUseCase,required this.acceptPharmacyOrderUseCase,required this.addCategoryUsecase,required this.getCategoryUseCase,
  required this.acceptUserOrderUseCase,required this.getUserOrderUseCase,required this.getPharmacyOrderUseCase,required this.getPharmacyOrderDescriptionUseCase,required this.deletePharmacyUseCase,required this.deleteWarehouseUseCase,required this.getPharmacyUsecase,required this.getWarehouseUseCase , required this.getmostWarehouseSoldUseCase,required this.getWarehouseWalletuseCase,required this.getuserUseCase});
  
@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getmsotwarehouse();
getuser();
getwarehouse();
getPharmacy();
getpharmcyOrder();
getUserOrder();
getCategor();
getuserConfirmedOrder();
    getpharmacyConfiremdOrder();
  }

///////////////////////////// Get Warehouse /////////////////////////////////////
  List<Warehouse> warehouse=[];
     getWarehuse()async{
          warehouse.clear();
        var response = await getWarehouseUseCase();
        response.fold((l) => Failure, (r) => warehouse.addAll(r));
     }

     //////////////////////////////////// DeleeteWarehouse ///////////////////////////
    deleteWarehouse({required String warehouseId})async{
      deleteWarehouseUseCase(warehouseId: warehouseId);
      getwarehouse();
    }
/////////////////////////////////////////////////////////////////////////////////

//////////////////////////////Get Pharmacy ////////////////////////////////

List<Pharmacy> Pharmacys=[];
getPharmacy()async{
  Pharmacys.clear()
;  var response = await getPharmacyUsecase();
  response.fold((l) => Failure, (r) => Pharmacys.addAll(r));
  update();
}

//////////////////  Delete Pharmacy
deltePharmcy({required String phId})async{
deletePharmacyUseCase(idPh: phId);
getPharmacy();
}


  //////////////////////////  GEt User ////////////////////////////////
 
  List<User> user =[];
  getuser()async{
    user.clear();
    var response = await getuserUseCase();
         response.fold((l) => Failure, (r) => user.addAll(r));
         update();
  }
///////////////////////////////  Get Warehouse //////////////////////////////
 
 List<Warehouse> mywarehouse=[];
 getwarehouse()async{
  mywarehouse.clear();
  var response = await getWarehouseUseCase();
  response.fold((l) => Failure, (r) => mywarehouse.addAll(r));
  update();
 }
//////////////////////////  UserOrder Pharmacy Order //////////////////////////////
bool pharmacyOrUser =true;
 
////////////////////////////// Get Pharmacy Order //////////////////////////////////////

List<PharmacyOrder> pharmacyOrder =[];
getpharmcyOrder()async{
  pharmacyOrder.clear();
 var response = await getPharmacyOrderUseCase();
 response.fold((l) => Failure, (r) => pharmacyOrder.addAll(r));
update();
}

///////////////////////////// Get pharmacy Confirmed Order //////////////////////////
List<PharmacyOrder> pharmacyconfirmedOrder=[];
getpharmacyConfiremdOrder()async{
  pharmacyconfirmedOrder.clear();
var response = await  pharmacyConfirmedOrderUseCase();
response.fold((l) => Failure, (r) => pharmacyconfirmedOrder.addAll(r));
update();

}
///////////////////////////// Accept Pharmacy Order ////////////
acceptPharmcyOrder({required String orderId}){
  print('controller');
  acceptPharmacyOrderUseCase(orderId: orderId);
  getpharmcyOrder();
}
//////////////////////////// Get User Order /////////////////////////////
List<UserOrder> userOrder =[];
getUserOrder ()async{
  userOrder.clear();
 var response = await  getUserOrderUseCase();
 response.fold((l) => Failure, (r) => userOrder.addAll(r));
 update();
}
///////////////////////// Get user Confirmed order /////////////////

 List<UserOrder> userconfirmedorder=[];
 getuserConfirmedOrder()async{
  userconfirmedorder.clear();
  var response = await userConfirmedOrderUseCase();
  response.fold((l) => Failure, (r) => userconfirmedorder.addAll(r));
  update();
 }

/////////////////////// Accept user Order ////////////////
 acceptUserOrder({required String orderId}){
  acceptUserOrderUseCase(orderId: orderId);
  getUserOrder();
 }
/////////////////////// Category ////////////////
List<Categoryprogramm> cateegoy=[];
getCategor()async{
  cateegoy.clear();
var response =await  getCategoryUseCase();
response.fold((l) => Failure, (r) => cateegoy.addAll(r));
update();

}
/////////////////// add CAtegor//////////
addCategory({required String cateegoyname})async{
  addCategoryUsecase(nameCategory:cateegoyname );
  getCategor();
}
/////////////////////////////////////////////////////////////////////////////////////////
int drawerIndex =0;  
List textDrawer = [
    'DashBoard',
    'user',
    'warehouse',
    'pharmacy',
    'order',
    'confirmed order',
    'category',
    
    
  ];

  List<WarehouseWallet> warehosueWallet=[];
  getWarehouseWallet({required String warehouseId})async{
    var response = await getWarehouseWalletuseCase(WarehouseId: warehouseId);
    response.fold((l) => Failure, (r) => warehosueWallet.addAll(r));
    update();
  }



  bool addkategory = false;
   Viewaddkategory(){
    addkategory = !addkategory;
    update();
   }
  List<Icon> drawerIcon =[
    const Icon(Icons.home),
    const Icon(Icons.person),
    const Icon(Icons.warehouse),
    const Icon(Icons.local_pharmacy),
    const Icon(Icons.shopping_cart),
    const Icon(Icons.shopping_cart_checkout),
    const Icon(Icons.category),
  ];
List<String> citeis = [
    'Damascus',
    'Latakia',
    'Ṭartus',
    'Homs',
    'Ḥamāh',
    'Idlib',
    'Maʿlula',
    'Palmyra',
    'Darʿā',
    'Aleppo',
    'Al-Ḥasakah',
    'Al-Qāmishlī',
    'Al-Qunayṭirah',
    'Al-Raqqah',
    'Al-Suwayda'
  ];
  //   String dropdownValue='Damascus';
  // String({required  SelectedItem}){
  //   if(SelectedItem is String){
  //       SelectedItem = dropdownValue;
  //       update();
  //   }
  // }
  List<Warehouse> dashBoardWarehuse =[];
  getmsotwarehouse()async{
  var rsponse = await    getmostWarehouseSoldUseCase();
  rsponse.fold((l) => Failure, (r) => dashBoardWarehuse.addAll(r));
  update();
  print(dashBoardWarehuse);
  }


  ////////////// SearchUser

  searchUser({required String username})async{
    user.clear();
    
    var response =await searchUserUseCase(userNmae: username);
    response.fold((l) => Failure, (r) => user.addAll(r));
    update();
  }
//////////// Search

 searchPharmacy({required String pharmacyName})async{
  Pharmacys.clear();
  var response = await searchPharmaacyUseCase(pharmacyName: pharmacyName);
  response.fold((l) => Failure, (r) => Pharmacys.addAll(r));
  update();
  print(Pharmacys);
 }
 ///////////// Search Pharmacy
  

  searchWarehouse({required String warehouseName})async{
    mywarehouse.clear();
   var response = await searchWarehouseUseCase(warehouseName: warehouseName);
   response.fold((l) => Failure, (r) => mywarehouse.addAll(r));
  update();
  }
}