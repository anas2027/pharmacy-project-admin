import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/home_page/domain/entity/get_user_order.dart';
import 'package:flutter_application_1/feature/home_page/domain/repositry/homepage_repo.dart';

class UserConfirmedOrderUseCase{
  HomeRepository homeRepository;
  UserConfirmedOrderUseCase({required this.homeRepository});
  Future<Either<Failure,List<UserOrder>>>call()async{
    return await homeRepository.getUserOrderConfrimed();
  }
}