import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/exception.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/error/network/network_info.dart';
import 'package:flutter_application_1/feature/home_page/data/model/pharmacy_order_descrption_model.dart';
import 'package:flutter_application_1/feature/home_page/data/remote_data_source/home_remote_data_source.dart';
import 'package:flutter_application_1/feature/home_page/domain/entity/category.dart';
import 'package:flutter_application_1/feature/home_page/domain/entity/get_pharamacy_order.dart';
import 'package:flutter_application_1/feature/home_page/domain/entity/get_user_detail_order.dart';
import 'package:flutter_application_1/feature/home_page/domain/entity/get_user_order.dart';
import 'package:flutter_application_1/feature/home_page/domain/repositry/homepage_repo.dart';
import 'package:flutter_application_1/feature/warehouse/domain/entity/get_warehouse.dart';

class HomeRepositoryImpl implements HomeRepository{
  final NetworkInfo networkInfo;
  final HomeRemoteDataSource homeRemoteDataSource;
  HomeRepositoryImpl(
      {required this.homeRemoteDataSource, required this.networkInfo});

  @override
  Future<Either<Failure, List<PharmacyOrder>>> getPharmacyOrder() async{
   if (await networkInfo.isconnected) {
      try {
        final remoteWarehouse = await homeRemoteDataSource.getpharamcyorder();
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final remoteWarehouse = await homeRemoteDataSource.getpharamcyorder();
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }

  @override
  Future<Either<Failure, List<PharmacyOrderDescrptionModel>>> getPharmacyOrderDescription({required String orderId}) async{
    if (await networkInfo.isconnected) {
      try {
        final remoteWarehouse = await homeRemoteDataSource.getpharamcyorderDescrption(orderId: orderId);
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final remoteWarehouse = await homeRemoteDataSource.getpharamcyorderDescrption(orderId: orderId);
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }

  @override
  Future<Either<Failure, List<UserOrder>>> getUserOrder() async{
    if (await networkInfo.isconnected) {
      try {
        final remoteWarehouse = await homeRemoteDataSource.getUserOrder();
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final remoteWarehouse = await homeRemoteDataSource.getUserOrder();
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }
  
  @override
  Future<Either<Failure, Unit>> acceptPharmacyOrder({required String orderId})async {
    if (await networkInfo.isconnected) {
      try {
        final remoteWarehouse = await homeRemoteDataSource.acceptPharmacyOrder(orderId: orderId);
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final remoteWarehouse = await homeRemoteDataSource.acceptPharmacyOrder(orderId: orderId);
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }
  
  @override
  Future<Either<Failure, Unit>> acceptUserOrder({required String orderId}) async{
   if (await networkInfo.isconnected) {
      try {
        final remoteWarehouse = await homeRemoteDataSource.acceptUserOrder(orderId: orderId);
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final remoteWarehouse = await homeRemoteDataSource.acceptUserOrder(orderId: orderId);
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }

  @override
  Future<Either<Failure, List<Warehouse>>> getmostWarehouseSold()async {
   if (await networkInfo.isconnected) {
      try {
        final remoteWarehouse = await homeRemoteDataSource.getmostWarehouseSold();
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final remoteWarehouse = await homeRemoteDataSource.getmostWarehouseSold();
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }

  @override
  Future<Either<Failure, List<UserOrderdescrption>>> getUserOrderDescrption({required String orderId})async {
   if (await networkInfo.isconnected) {
      try {
        final remoteWarehouse = await homeRemoteDataSource.getUserOrderDescrption(orderId: orderId);
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final remoteWarehouse = await homeRemoteDataSource.getUserOrderDescrption(orderId: orderId);
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }

  @override
  Future<Either<Failure, Unit>> addCategory({required String nameCategory})async{
    if (await networkInfo.isconnected) {
      try {
        final remoteWarehouse = await homeRemoteDataSource.addCategory(nameCategory: nameCategory);
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final remoteWarehouse = await homeRemoteDataSource.addCategory(nameCategory: nameCategory);
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }

  @override
  Future<Either<Failure, List<Categoryprogramm>>> getCategory() async{
    if (await networkInfo.isconnected) {
      try {
        final remoteWarehouse = await homeRemoteDataSource.getCategory();
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final remoteWarehouse = await homeRemoteDataSource.getCategory();
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }
  
  @override
  Future<Either<Failure, List<PharmacyOrder>>> getPharmacyOrderConfrimed()async {
   if (await networkInfo.isconnected) {
      try {
        final remoteWarehouse = await homeRemoteDataSource.getPharmacyOrderConfrimed();
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final remoteWarehouse = await homeRemoteDataSource.getPharmacyOrderConfrimed();
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }
  
  @override
  Future<Either<Failure, List<UserOrder>>> getUserOrderConfrimed() async{
  if (await networkInfo.isconnected) {
      try {
        final remoteWarehouse = await homeRemoteDataSource.getUserOrderConfrimed();
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final remoteWarehouse = await homeRemoteDataSource.getUserOrderConfrimed();
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }
}