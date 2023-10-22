import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/user/domain/entity/user.dart';
import 'package:flutter_application_1/feature/user/domain/user_repositry/user_repositry.dart';

class SearchUserUseCase{
  UserRepository userRepository;
  SearchUserUseCase({required this.userRepository});
  Future<Either<Failure,List<User>>>call({required String userNmae})async{
    return await userRepository.searchUser(nameUser: userNmae);
  }
}