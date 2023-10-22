import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/entity/ph_wallet.dart';
import 'package:flutter_application_1/feature/user/domain/entity/user.dart';
import 'package:flutter_application_1/feature/user/domain/entity/user_wallet.dart';

abstract class UserRepository{
  Future<Either<Failure,List<User>>> getUser();
  Future<Either<Failure,Unit>> addnewbalanceToUesr({required String user_id,required String newquantity});
  Future<Either<Failure,Unit>> ressetuserbalance({required String user_id});
  Future<Either<Failure,List<UserWallet>>> getUserWallet({required String user_id});
  Future<Either<Failure,List<User>>>searchUser({required String nameUser});
}  