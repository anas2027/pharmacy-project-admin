import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/exception.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/error/network/network_info.dart';
import 'package:flutter_application_1/feature/pharmcy/data/datasource/pharmcy_remote_data_source.dart';
import 'package:flutter_application_1/feature/pharmcy/data/model/add_pharamcy_model.dart';
import 'package:flutter_application_1/feature/pharmcy/data/model/edit_pharamcy_model.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/entity/add_pharamcy.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/entity/edit_pharamcy.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/entity/ph_wallet.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/entity/pharmcy.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/pharmcy_repositry/pharmcy_repositry.dart';

class PharmcyReposImpl implements PharmacyRepository {
  final NetworkInfo networkInfo;
  final PharmacyRemoteDataSource pharmacyRemoteDataSource;
  PharmcyReposImpl(
      {required this.pharmacyRemoteDataSource, required this.networkInfo});

  @override
  Future<Either<Failure, List<Pharmacy>>> getPharmacy() async {
    if (await networkInfo.isconnected) {
      try {
        final remoteWarehouse = await pharmacyRemoteDataSource.getPharmcy();
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final remoteWarehouse = await pharmacyRemoteDataSource.getPharmcy();
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }

  @override
  Future<Either<Failure, Unit>> AddPharamcy(AddPharmacy addPharmacy) async {
    AddPharamcyModel addPharamcyModel = AddPharamcyModel(
        name: addPharmacy.name,
        name_ph: addPharmacy.name_ph,
        email: addPharmacy.email,
        password: addPharmacy.password,
        city: addPharmacy.city,
        street: addPharmacy.street,
        phone: addPharmacy.phone);
    if (await networkInfo.isconnected) {
      try {
        final remoteWarehouse =
            await pharmacyRemoteDataSource.AddPharamcy(addPharamcyModel);
        return Right(unit);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final remoteWarehouse =
            await pharmacyRemoteDataSource.AddPharamcy(addPharamcyModel);
        return Right(unit);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }

  @override
  Future<Either<Failure, Unit>> deletePharamcy({required String idPh}) async {
    if (await networkInfo.isconnected) {
      try {
        final remoteWarehouse =
            await pharmacyRemoteDataSource.deletePharamcyremote(phId: idPh);
        return Right(unit);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final remoteWarehouse =
            await pharmacyRemoteDataSource.deletePharamcyremote(phId: idPh);
        return Right(unit);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }

  @override
  Future<Either<Failure, Unit>> editpharamcy(
      {required EditPharmacy editPharmacy}) async {
    EditPharmacyModel editPharmacyModel = EditPharmacyModel(
        id: editPharmacy.id,
        email: editPharmacy.email,
        name: editPharmacy.name,
        city: editPharmacy.city,
        name_ph: editPharmacy.name,
        password: editPharmacy.password,
        phone: editPharmacy.phone,
        street: editPharmacy.street);
    if (await networkInfo.isconnected) {
      try {
        final remoteWarehouse = await pharmacyRemoteDataSource
            .editpharamcyremote(editPharmacyModel: editPharmacyModel);
        return Right(unit);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final remoteWarehouse = await pharmacyRemoteDataSource
            .editpharamcyremote(editPharmacyModel: editPharmacyModel);
        return Right(unit);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }

  @override
  Future<Either<Failure, Unit>> addnewpharmacyWallet(
      {required String newbalance, required String ph_id}) async {
    if (await networkInfo.isconnected) {
      try {
        final remoteWarehouse = await pharmacyRemoteDataSource
            .addnewpharmacyWallet(newbalance: newbalance, ph_id: ph_id);
        return Right(unit);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final remoteWarehouse = await pharmacyRemoteDataSource
            .addnewpharmacyWallet(newbalance: newbalance, ph_id: ph_id);
        return Right(unit);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }

  @override
  Future<Either<Failure, List<PhWallet>>> getpharmacyWallet(
      {required String ph_id}) async {
    if (await networkInfo.isconnected) {
      try {
        final remoteWarehouse =
            await pharmacyRemoteDataSource.getpharmacyWallet(ph_id: ph_id);
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final remoteWarehouse = await pharmacyRemoteDataSource
            .getpharmacyWallet(ph_id: ph_id);
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }

  @override
  Future<Either<Failure, Unit>> ressetwalletPharmacyWallet(
      {required String ph_id}) async {
    if (await networkInfo.isconnected) {
      try {
        final remoteWarehouse = await pharmacyRemoteDataSource
            .ressetwalletPharmacyWallet(ph_id: ph_id);
        return Right(unit);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final remoteWarehouse = await pharmacyRemoteDataSource
            .ressetwalletPharmacyWallet(ph_id: ph_id);
        return Right(unit);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }
  
  @override
  Future<Either<Failure, List<Pharmacy>>> searchPharmaacy({required String pharmcyName}) async{
     if (await networkInfo.isconnected) {
      try {
        final remoteWarehouse = await pharmacyRemoteDataSource
            .searchPharmaacy(pharmacyName: pharmcyName);
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final remoteWarehouse = await pharmacyRemoteDataSource
                .searchPharmaacy(pharmacyName: pharmcyName);
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }
}
