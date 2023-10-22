import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/entity/pharmcy.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/usecase/account_reset_balanace_usecase.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/usecase/add_new_balnace_wallet_usecase.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/usecase/delete_pharamacy_usecase.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/usecase/get_pharmcy_usecase.dart';
import 'package:get/get.dart';

class pharmacycontroller extends GetxController {
  DeletePharmacyUseCase deletePharmacyUseCase;
  GetPharmacyUsecase getPharmacyUsecase;
  AddNewPharamacyWallet addNewPharamacyWallet;
  AccountRessetBalanceUseCase accountRessetBalanceUseCase;
  pharmacycontroller(
      {required this.getPharmacyUsecase,
      required this.deletePharmacyUseCase,
      required this.addNewPharamacyWallet,
      required this.accountRessetBalanceUseCase});
  bool isloading = true;
  List<Pharmacy> pharmacy = [];
  Future getPharmcy() async {
    List<Pharmacy> refreshPharmacy = [];
    pharmacy = refreshPharmacy;
    var mypha = await getPharmacyUsecase();
    mypha.fold((l) => Failure, (r) => pharmacy.addAll(r));
    isloading = false;
    update();
  }

  var tabindex = 0;

  void changTabIndex(int index) {
    tabindex = index;
    update();
  }

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    await getPharmcy();
    print('awddawd $pharmacy');
  }

// showmore
  bool isshowMores = false;
  showMores() {
    isshowMores = !isshowMores;
    update();
  }

  var currentIndex = 0.obs;
  void changePage(int index) {
    currentIndex.value = index;
    if (index == 0) {
    } else if (index == 1) {
      Get.offAllNamed('/HomePage');
    } else {
      Get.offAllNamed('/warehouse');
    }
  }

  deltePharaemacy({required String id}) async {
    return await deletePharmacyUseCase(idPh: id);
  }

  ressetPhAccount({required String ph_id})async{
    return await ressetPhAccount(ph_id: ph_id);
  }

  addnewbalance({required String newbalance, required String ph_id})async{
    return await addnewbalance(newbalance: newbalance, ph_id: ph_id);
  }

}
