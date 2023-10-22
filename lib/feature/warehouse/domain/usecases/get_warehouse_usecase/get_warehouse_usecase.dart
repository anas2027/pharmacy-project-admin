import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/warehouse/domain/entity/get_warehouse.dart';
import 'package:flutter_application_1/feature/warehouse/domain/repositry/warehouse_repositry.dart';

class GetWarehouseUseCase {
  WarehouseRepository warehouseRepository;
  GetWarehouseUseCase({required this.warehouseRepository});
  Future<Either<Failure,List<Warehouse>>>call()async{
    return await warehouseRepository.getWarehouse();
  }
}