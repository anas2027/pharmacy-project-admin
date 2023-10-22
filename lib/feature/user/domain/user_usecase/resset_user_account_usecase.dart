import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/user/domain/user_repositry/user_repositry.dart';

class RessetUserAcountUseCasse{
  UserRepository userRepository;
  RessetUserAcountUseCasse({required this.userRepository});
  Future<Either<Failure,Unit>>call({required String userId})async{
    return await userRepository.ressetuserbalance(user_id: userId);
  }
}