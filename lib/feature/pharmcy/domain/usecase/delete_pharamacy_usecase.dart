import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/pharmcy_repositry/pharmcy_repositry.dart';

class DeletePharmacyUseCase {
 PharmacyRepository pharmacyRepository;
 DeletePharmacyUseCase({required this.pharmacyRepository});
 Future<Either<Failure,Unit>> call({required String idPh })async{
  return await pharmacyRepository.deletePharamcy(idPh: idPh);
 }
}