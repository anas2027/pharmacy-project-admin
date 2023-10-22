import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/exception.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/error/network/network_info.dart';
import 'package:flutter_application_1/feature/auth/data/model/login_response_data.dart';
import 'package:flutter_application_1/feature/auth/domain/entity/login_response.dart';
import 'package:flutter_application_1/feature/warehouse/data/warehouse_model/warehouse_edit_model.dart';
import 'package:flutter_application_1/feature/warehouse/data/warehouse_model/warehouse_model.dart';
import 'package:flutter_application_1/feature/warehouse/data/warehouse_model/warehouse_model_addoredit.dart';
import 'package:flutter_application_1/feature/warehouse/data/warehouse_remote_data_source/warehouse_remote_data_source.dart';
import 'package:flutter_application_1/feature/warehouse/domain/entity/add_warehouse_entity.dart';
import 'package:flutter_application_1/feature/warehouse/domain/entity/edit_warehouse.dart';
import 'package:flutter_application_1/feature/warehouse/domain/entity/get_warehouse.dart';
import 'package:flutter_application_1/feature/warehouse/domain/entity/warehouse_wallet.dart';
import 'package:flutter_application_1/feature/warehouse/domain/repositry/warehouse_repositry.dart';

class warehouseRepoImpl implements WarehouseRepository{
  final NetworkInfo networkInfo;
  final WarehouseRemoteDataSource warehouseRemoteDataSource;
  warehouseRepoImpl({required this.networkInfo,required this.warehouseRemoteDataSource});
  @override
  Future<Either<Failure, List<Warehouse>>> getWarehouse() async{
   if (await networkInfo.isconnected) {
      try {
        final remoteWarehouse = await warehouseRemoteDataSource.getWarehouse();
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final remoteWarehouse = await warehouseRemoteDataSource.getWarehouse();
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }
  
  @override
  Future<Either<Failure,Unit>> addWarehouse({required AddWarehouse addWarehouse}) async{
    AddWarehouseOrEditModel addWarehouseOrEditModel = AddWarehouseOrEditModel(email: addWarehouse.email,name_warehouse: addWarehouse.name_warehouse,password:addWarehouse.password,city_warehouse: addWarehouse.city_warehouse,phone_warehouse: addWarehouse.phone_warehouse,streete_warehouse: addWarehouse.streete_warehouse);
   if (await networkInfo.isconnected) {
      try {
        final remoteWarehouse = await warehouseRemoteDataSource.addWarehouse(addWarehouseOrEditModel: addWarehouseOrEditModel);
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final remoteWarehouse = await warehouseRemoteDataSource.addWarehouse(addWarehouseOrEditModel: addWarehouseOrEditModel);
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }
  
  @override
  Future<Either<Failure, Unit>> editWarehouse({required EditWarehouse editWarehouse}) async{
    WarehouseEditModel warehouseModel = WarehouseEditModel(id: editWarehouse.id,
     name_warehouse: editWarehouse.name_warehouse, email: editWarehouse.email,
       city_warehouse: editWarehouse.city_warehouse, street_warehouse: editWarehouse.street_warehouse,
        phone_warehouse: editWarehouse.phone_warehouse, password: editWarehouse.password);
    if (await networkInfo.isconnected) {
      try {
        final remoteWarehouse = await warehouseRemoteDataSource.editWarehousse(warehouseEditModel: warehouseModel);
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final remoteWarehouse = await warehouseRemoteDataSource.editWarehousse(warehouseEditModel: warehouseModel);
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }
  
  @override
  Future<Either<Failure, Unit>> deleteWarehouse({required String warehouseId}) async{
    if (await networkInfo.isconnected) {
      try {
        final remoteWarehouse = await warehouseRemoteDataSource.deleteWarehouse(warehouseId: warehouseId);
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final remoteWarehouse = await warehouseRemoteDataSource.deleteWarehouse(warehouseId: warehouseId);
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }
  
  @override
  Future<Either<Failure, Unit>> addnewbalancewarehouse({required String warehouse_id}) {
    // TODO: implement addnewbalancewarehouse
    throw UnimplementedError();
  }
  
  @override
  Future<Either<Failure, Unit>> resetBalanceWarehouse({required String warehouse_id})async {
    if (await networkInfo.isconnected) {
      try {
        final remoteWarehouse = await warehouseRemoteDataSource.ressetPhAccountbalanace(warehouseId:warehouse_id);
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final remoteWarehouse = await warehouseRemoteDataSource.ressetPhAccountbalanace(warehouseId:  warehouse_id);
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }

  @override
  Future<Either<Failure, List<WarehouseWallet>>> getWarehouseWallet({required String warehouse_id}) async{
       if (await networkInfo.isconnected) {
      try {
        final remoteWarehouse = await warehouseRemoteDataSource.getWarehouseWallet(userId:warehouse_id);
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final remoteWarehouse = await warehouseRemoteDataSource.getWarehouseWallet(userId:  warehouse_id);
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }
  
  @override
  Future<Either<Failure, List<Warehouse>>> warehouseSearch({required String warehouseName}) async{
    if (await networkInfo.isconnected) {
      try {
        final remoteWarehouse = await warehouseRemoteDataSource.searchWarehouse(warehouseName:warehouseName);
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final remoteWarehouse = await warehouseRemoteDataSource.searchWarehouse(warehouseName:warehouseName);
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }
}