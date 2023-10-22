import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/entity/add_pharamcy.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/pharmcy_repositry/pharmcy_repositry.dart';

class AddPharmacyUseCase{
  PharmacyRepository pharmacyRepository;
  AddPharmacyUseCase({required this.pharmacyRepository});
  Future<Either<Failure,Unit>> call({required AddPharmacy addPharmacy})async{
    return await pharmacyRepository.AddPharamcy(addPharmacy );
  }
}