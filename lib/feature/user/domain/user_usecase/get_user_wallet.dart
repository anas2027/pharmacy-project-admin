import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/entity/ph_wallet.dart';
import 'package:flutter_application_1/feature/user/domain/entity/user_wallet.dart';
import 'package:flutter_application_1/feature/user/domain/user_repositry/user_repositry.dart';

class GetUserWalletUseCase {
  UserRepository userRepository;
  GetUserWalletUseCase({required this.userRepository});
  Future<Either<Failure,List<UserWallet>>>call({required String userId})async{
    return await userRepository.getUserWallet(user_id: userId);
  }
}