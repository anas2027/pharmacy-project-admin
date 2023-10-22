import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/home_page/domain/repositry/homepage_repo.dart';

class AcceptUserOrderUseCase {
  HomeRepository homeRepository;
  AcceptUserOrderUseCase({required this.homeRepository});
  Future<Either<Failure,Unit>>call({required String orderId})async{
    return await homeRepository.acceptUserOrder(orderId: orderId);
  }
}