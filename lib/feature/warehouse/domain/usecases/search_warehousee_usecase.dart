import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/warehouse/domain/entity/get_warehouse.dart';
import 'package:flutter_application_1/feature/warehouse/domain/repositry/warehouse_repositry.dart';

class SearchWarehouseUseCase{
  WarehouseRepository warehouseRepository;
  SearchWarehouseUseCase({required this.warehouseRepository});
  Future<Either<Failure,List<Warehouse>>>call({required String warehouseName})async{
    return await warehouseRepository.warehouseSearch(warehouseName: warehouseName);
  }
}