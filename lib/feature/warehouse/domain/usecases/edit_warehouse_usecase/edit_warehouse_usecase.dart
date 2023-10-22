import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/warehouse/domain/entity/edit_warehouse.dart';
import 'package:flutter_application_1/feature/warehouse/domain/repositry/warehouse_repositry.dart';

class EditWarehouseUseCase {
  WarehouseRepository warehouseRepository;
  EditWarehouseUseCase({required this.warehouseRepository});
  Future<Either<Failure,Unit>> call({required EditWarehouse editWarehouse})async{
  return await warehouseRepository.editWarehouse(editWarehouse: editWarehouse);
  }
}