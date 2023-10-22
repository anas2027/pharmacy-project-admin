import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/auth/data/model/login_response_data.dart';
import 'package:flutter_application_1/feature/auth/domain/entity/login_response.dart';
import 'package:flutter_application_1/feature/warehouse/domain/entity/add_warehouse_entity.dart';
import 'package:flutter_application_1/feature/warehouse/domain/entity/edit_warehouse.dart';
import 'package:flutter_application_1/feature/warehouse/domain/entity/get_warehouse.dart';
import 'package:flutter_application_1/feature/warehouse/domain/entity/warehouse_wallet.dart';

abstract class WarehouseRepository {
  Future<Either<Failure, List<Warehouse>>> getWarehouse();
  Future<Either<Failure, Unit>> addWarehouse(
      {required AddWarehouse addWarehouse});
  Future<Either<Failure, Unit>> editWarehouse(
      {required EditWarehouse editWarehouse});
  Future<Either<Failure, Unit>> deleteWarehouse({required String warehouseId});
  Future<Either<Failure, Unit>> resetBalanceWarehouse(
      {required String warehouse_id});
  Future<Either<Failure, Unit>> addnewbalancewarehouse(
      {required String warehouse_id});
      Future<Either<Failure,List<WarehouseWallet>>> getWarehouseWallet({ required String warehouse_id});
      Future<Either<Failure,List<Warehouse>>>warehouseSearch({required String warehouseName});
      
}
