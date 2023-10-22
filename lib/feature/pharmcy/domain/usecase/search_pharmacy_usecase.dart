import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/entity/pharmcy.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/pharmcy_repositry/pharmcy_repositry.dart';

class SearchPharmaacyUseCase{
  PharmacyRepository pharmacyRepository;
SearchPharmaacyUseCase({required this.pharmacyRepository});
Future<Either<Failure,List<Pharmacy>>>call({required String pharmacyName})async{
  return await pharmacyRepository
  .searchPharmaacy(pharmcyName: pharmacyName);
}
}