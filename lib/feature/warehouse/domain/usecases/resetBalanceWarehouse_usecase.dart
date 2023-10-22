import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/warehouse/domain/entity/get_warehouse.dart';
import 'package:flutter_application_1/feature/warehouse/domain/repositry/warehouse_repositry.dart';

class ResetBalanceWarehouseUseCase {
  WarehouseRepository warehouseRepository;
  ResetBalanceWarehouseUseCase({required this.warehouseRepository});
  Future<Either<Failure,Unit>>call({required String warehouseID})async{
    return await warehouseRepository.resetBalanceWarehouse(warehouse_id: warehouseID);
  }
}