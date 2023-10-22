import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/home_page/domain/repositry/homepage_repo.dart';
import 'package:flutter_application_1/feature/warehouse/domain/entity/get_warehouse.dart';

class GetmostWarehouseSoldUseCase {
  HomeRepository homeRepository;
GetmostWarehouseSoldUseCase({required this.homeRepository});
Future<Either<Failure,List<Warehouse>>>call()async{
  return await homeRepository.getmostWarehouseSold();
}
}