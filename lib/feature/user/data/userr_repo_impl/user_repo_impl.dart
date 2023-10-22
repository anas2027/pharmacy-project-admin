import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/exception.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/error/network/network_info.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/entity/ph_wallet.dart';
import 'package:flutter_application_1/feature/user/data/remote_data_source/user_remote_data_source.dart';
import 'package:flutter_application_1/feature/user/domain/entity/user.dart';
import 'package:flutter_application_1/feature/user/domain/entity/user_wallet.dart';
import 'package:flutter_application_1/feature/user/domain/user_repositry/user_repositry.dart';

class UserRepoImpl extends UserRepository{
  final NetworkInfo networkInfo;
  final UserRemoteDataSource userRemoteDataSource;
  UserRepoImpl({required this.networkInfo,required this.userRemoteDataSource});
  @override
  Future<Either<Failure, List<User>>> getUser() async{
   if (await networkInfo.isconnected) {
      try {
        final remoteWarehouse = await userRemoteDataSource.getUser();
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final remoteWarehouse = await userRemoteDataSource.getUser();
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }
  
  @override
  Future<Either<Failure, Unit>> addnewbalanceToUesr({required String user_id, required String newquantity}) async{
   if (await networkInfo.isconnected) {
      try {
        final remoteWarehouse = await userRemoteDataSource.addnewbalanceToUesr(newquantity: newquantity,userId: user_id);
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final remoteWarehouse = await userRemoteDataSource.addnewbalanceToUesr(newquantity: newquantity,userId: user_id);
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }
  
  @override
  Future<Either<Failure, Unit>> ressetuserbalance({required String user_id})async {
    if (await networkInfo.isconnected) {
      try {
        final remoteWarehouse = await userRemoteDataSource.ressetuserbalance(userId: user_id);
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final remoteWarehouse = await userRemoteDataSource.ressetuserbalance(userId: user_id);
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }

  @override
  Future<Either<Failure, List<UserWallet>>> getUserWallet({required String user_id}) async{
     if (await networkInfo.isconnected) {
      try {
        final remoteWarehouse = await userRemoteDataSource.getUserWallet(userId: user_id);
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final remoteWarehouse = await userRemoteDataSource.getUserWallet(userId: user_id);
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }
  
  @override
  Future<Either<Failure, List<User>>> searchUser({required String nameUser}) async{
    if (await networkInfo.isconnected) {
      try {
        final remoteWarehouse = await userRemoteDataSource.searchuser(userName: nameUser);
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final remoteWarehouse = await userRemoteDataSource.searchuser(userName: nameUser);
        return Right(remoteWarehouse);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }
}