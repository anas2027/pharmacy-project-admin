import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/home_page/domain/entity/get_user_detail_order.dart';
import 'package:flutter_application_1/feature/home_page/domain/repositry/homepage_repo.dart';

class GetUserOrderDescrptionUseCase{
  HomeRepository homeRepository;
  GetUserOrderDescrptionUseCase({required this.homeRepository});
  Future<Either<Failure,List<UserOrderdescrption>>>call({required String orderId})async{
    return await homeRepository.getUserOrderDescrption(orderId: orderId);
  }
}