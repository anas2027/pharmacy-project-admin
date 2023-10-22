import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/user/domain/entity/user.dart';
import 'package:flutter_application_1/feature/user/domain/user_usecase/add_new_balance_to_user_wallet_usecase.dart';
import 'package:flutter_application_1/feature/user/domain/user_usecase/get_user_usecase.dart';
import 'package:flutter_application_1/feature/user/domain/user_usecase/resset_user_account_usecase.dart';
import 'package:get/get.dart';

class UserViewCController extends GetxController{
  GetuserUseCase getuserUseCase;
  AddnewbalanceToUesrWalletUseCase addnewbalanceToUesrWalletUseCase;
  RessetUserAcountUseCasse ressetUserAcountUseCasse;
  UserViewCController({required this.getuserUseCase,required this.addnewbalanceToUesrWalletUseCase, required this.ressetUserAcountUseCasse});
  List<User> user = [];

 @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    await getUserList();
    print('awddawd $user');
  }

  getUserList ()async{
    var resposne = await getuserUseCase();
 resposne.fold((l) => Failure, (r) => user.addAll(r));

 update();
 print(user);
  }

var currentIndex = 1.obs; 
  bool isloading = true;

  void changePage(int index) { 
    currentIndex.value = index; 
    if (index == 0) { 
      Get.offAllNamed('/pharmacy'); 
    } else if (index == 1) { 
    } else { 
      Get.offAllNamed('/warehouse'); 
    } 
  }

  RessetUserAccount({required userId})async{
    return await ressetUserAcountUseCasse(userId: userId);
  }
  AddnewbalanceToUesrWallet({required userId,required String newquantity})async{
    return await addnewbalanceToUesrWalletUseCase(userId: userId,newquantity:newquantity);
  }
}