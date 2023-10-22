
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/entity/ph_wallet.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/usecase/account_reset_balanace_usecase.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/usecase/add_new_balnace_wallet_usecase.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/usecase/get_pharmacy_wallet.dart';
import 'package:get/get.dart';


class Addwalletcontrollerph extends GetxController{
  AddNewPharamacyWallet addNewPharamacyWallet ;
  AccountRessetBalanceUseCase accountRessetBalanceUseCase;
  GetPharmacyWaletUseCase getPharmacyWaletUseCase;
  Addwalletcontrollerph({required this.getPharmacyWaletUseCase,required this.accountRessetBalanceUseCase,required this.addNewPharamacyWallet});
  var data= Get.parameters;
  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    await getpharmacyWallet(pgId: '${data['id']}');
    
  }
  addnewbalance({required String phId,required String newbalance})async{
     addNewPharamacyWallet(ph_id:phId,Newbalance: newbalance);
     getpharmacyWallet(pgId: phId);
  }

  ressetaccount({required String phId})async{
     accountRessetBalanceUseCase(ph_id: phId);
          getpharmacyWallet(pgId: phId);

  }
  List<PhWallet> wallet =[];
  getpharmacyWallet({required String pgId})async{
    wallet.clear();
    var response = await getPharmacyWaletUseCase(phId: pgId);
    response.fold((l) => Failure, (r) => wallet.addAll(r));
    update();
  }
}