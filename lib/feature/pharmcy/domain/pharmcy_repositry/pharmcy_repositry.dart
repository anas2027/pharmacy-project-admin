import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/entity/add_pharamcy.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/entity/edit_pharamcy.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/entity/ph_wallet.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/entity/pharmcy.dart';

abstract class PharmacyRepository {
  Future<Either<Failure, List<Pharmacy>>> getPharmacy();
  Future<Either<Failure, Unit>> AddPharamcy(AddPharmacy addPharmacy);
  Future<Either<Failure, Unit>> editpharamcy(
      {required EditPharmacy editPharmacy});
  Future<Either<Failure, Unit>> deletePharamcy({required String idPh});
  Future<Either<Failure, Unit>> addnewpharmacyWallet(
      {required String newbalance, required String ph_id});
  Future<Either<Failure, Unit>> ressetwalletPharmacyWallet(
      {required String ph_id});
  Future<Either<Failure, List<PhWallet>>> getpharmacyWallet({required String ph_id});
  Future<Either<Failure,List<Pharmacy>>>searchPharmaacy({required String pharmcyName});
}
