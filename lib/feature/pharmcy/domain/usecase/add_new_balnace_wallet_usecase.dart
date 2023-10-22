import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/entity/pharmcy.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/pharmcy_repositry/pharmcy_repositry.dart';

class AddNewPharamacyWallet {
  PharmacyRepository pharmacyRepository;
  AddNewPharamacyWallet({required this.pharmacyRepository});
   Future<Either<Failure,Unit>> call({required String ph_id,required String Newbalance})async{
    return await pharmacyRepository.addnewpharmacyWallet(ph_id: ph_id,newbalance: Newbalance);
   }
}