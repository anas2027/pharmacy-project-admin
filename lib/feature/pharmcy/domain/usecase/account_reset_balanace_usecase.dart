import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/pharmcy_repositry/pharmcy_repositry.dart';

class AccountRessetBalanceUseCase {
  PharmacyRepository pharmacyRepository;
  AccountRessetBalanceUseCase({required this.pharmacyRepository});
  Future<Either<Failure, Unit>> call(
      { required String ph_id})async{
        return await pharmacyRepository.ressetwalletPharmacyWallet( ph_id: ph_id,);
      }
}
