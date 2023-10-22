import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/entity/ph_wallet.dart';
import 'package:flutter_application_1/feature/user/domain/entity/user_wallet.dart';
import 'package:flutter_application_1/feature/user/domain/user_usecase/add_new_balance_to_user_wallet_usecase.dart';
import 'package:flutter_application_1/feature/user/domain/user_usecase/get_user_wallet.dart';
import 'package:flutter_application_1/feature/user/domain/user_usecase/resset_user_account_usecase.dart';
import 'package:get/get.dart';

class UserWalletController extends GetxController{
  GetUserWalletUseCase getUserWalletUseCase;
  AddnewbalanceToUesrWalletUseCase addnewbalanceToUesrWalletUseCase;
  RessetUserAcountUseCasse ressetUserAcountUseCasse;
  UserWalletController({required this.addnewbalanceToUesrWalletUseCase ,required this.getUserWalletUseCase,required this.ressetUserAcountUseCasse});
var data =Get.parameters;

 @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    await getUserWallet(userId: '${data['id']}');
  }
  List<UserWallet> wallet = [];
  getUserWallet ({required String userId})async{
    wallet.clear();
    var response  =  await getUserWalletUseCase(userId: userId);
    response.fold((l) => Failure, (r) => wallet.addAll(r));
    update();

  }


  clearUserWallet({required String userId})async{
     ressetUserAcountUseCasse(userId: userId);
    getUserWallet(userId: userId);
  }

  addNewBalacneToUserWalet({required String userId,required String newquantity})async{
      addnewbalanceToUesrWalletUseCase(newquantity: newquantity,userId: userId);
     getUserWallet(userId: userId);

  }

}