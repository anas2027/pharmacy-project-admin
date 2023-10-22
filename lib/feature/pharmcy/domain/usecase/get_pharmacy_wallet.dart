import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/entity/ph_wallet.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/pharmcy_repositry/pharmcy_repositry.dart';

class GetPharmacyWaletUseCase {
  PharmacyRepository pharmacyRepository;
  GetPharmacyWaletUseCase({required this.pharmacyRepository});
  Future<Either<Failure,List<PhWallet> >>call({required String phId})async{
    return await pharmacyRepository.getpharmacyWallet(ph_id: phId);
  }
}