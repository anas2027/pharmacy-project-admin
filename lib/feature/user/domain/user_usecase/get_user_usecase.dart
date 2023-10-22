import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/user/domain/entity/user.dart';
import 'package:flutter_application_1/feature/user/domain/user_repositry/user_repositry.dart';

class GetuserUseCase {
  UserRepository userRepository;
  GetuserUseCase({required this.userRepository});
  Future<Either<Failure,List<User>>>call()async{
    return await userRepository.getUser();
  }
}