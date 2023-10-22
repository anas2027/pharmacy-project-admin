import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/entity/edit_pharamcy.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/pharmcy_repositry/pharmcy_repositry.dart';

class EditpharamcyUseCase {
  PharmacyRepository pharmacyRepository;
  EditpharamcyUseCase({required this.pharmacyRepository});
  Future<Either<Failure,Unit>>call({required EditPharmacy editPharmacy})async{
    return await pharmacyRepository.editpharamcy(editPharmacy: editPharmacy);
  }
}