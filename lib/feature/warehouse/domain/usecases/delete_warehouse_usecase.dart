import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/warehouse/domain/repositry/warehouse_repositry.dart';

class DeleteWarehouseUseCase{
  WarehouseRepository warehouseRepository;
  DeleteWarehouseUseCase({required this.warehouseRepository});
  Future<Either<Failure,Unit>>call({required String warehouseId})async{
    return await warehouseRepository.deleteWarehouse(warehouseId: warehouseId);
  }
}