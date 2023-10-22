import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/home_page/domain/entity/get_pharamacy_order.dart';
import 'package:flutter_application_1/feature/home_page/domain/repositry/homepage_repo.dart';

class PharmacyConfirmedOrderUseCase{
  HomeRepository homeRepository;
  PharmacyConfirmedOrderUseCase({required this.homeRepository});
  Future<Either<Failure,List<PharmacyOrder>>>call()async{
    return await homeRepository.getPharmacyOrderConfrimed();
  }
}