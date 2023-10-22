import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/warehouse/domain/entity/add_warehouse_entity.dart';
import 'package:flutter_application_1/feature/warehouse/domain/repositry/warehouse_repositry.dart';

class AddWarehouseUseCase {
  WarehouseRepository warehouseRepository;
  AddWarehouseUseCase({required this.warehouseRepository});
  Future<Either<Failure,Unit>> call({required AddWarehouse addWarehouse})async{
    print('usecase');
    return await warehouseRepository.addWarehouse(addWarehouse: addWarehouse);
  }
}