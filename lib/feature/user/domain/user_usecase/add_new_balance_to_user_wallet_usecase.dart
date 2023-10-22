import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/user/domain/user_repositry/user_repositry.dart';

class AddnewbalanceToUesrWalletUseCase {
UserRepository userRepository;
AddnewbalanceToUesrWalletUseCase({required this.userRepository});
Future<Either<Failure,Unit>>call({required String userId,required String newquantity})async{
  return await userRepository.addnewbalanceToUesr(user_id: userId, newquantity: newquantity);
}
}