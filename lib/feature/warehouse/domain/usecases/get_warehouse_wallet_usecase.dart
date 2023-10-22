import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/auth/domain/entity/login_response.dart';
import 'package:flutter_application_1/feature/warehouse/domain/entity/warehouse_wallet.dart';
import 'package:flutter_application_1/feature/warehouse/domain/repositry/warehouse_repositry.dart';

class GetWarehouseWalletuseCase {
  WarehouseRepository warehouseRepository;
  GetWarehouseWalletuseCase({required this.warehouseRepository});
  Future<Either<Failure,List<WarehouseWallet>>> call({required String WarehouseId})async{
    return await warehouseRepository.getWarehouseWallet(warehouse_id: WarehouseId);
  }
}