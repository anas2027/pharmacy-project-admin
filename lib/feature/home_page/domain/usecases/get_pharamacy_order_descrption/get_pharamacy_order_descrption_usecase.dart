import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/home_page/data/model/pharmacy_order_descrption_model.dart';
import 'package:flutter_application_1/feature/home_page/domain/repositry/homepage_repo.dart';

class GetPharmacyOrderDescriptionUseCase{
  HomeRepository homeRepository;
  GetPharmacyOrderDescriptionUseCase({required this.homeRepository});
  Future<Either<Failure,List<PharmacyOrderDescrptionModel>>>call({required String orderId})async{
    return await homeRepository.getPharmacyOrderDescription(orderId: orderId);
  }
}