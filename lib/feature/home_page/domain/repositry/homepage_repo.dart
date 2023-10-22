import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/home_page/data/model/pharmacy_order_descrption_model.dart';
import 'package:flutter_application_1/feature/home_page/domain/entity/category.dart';
import 'package:flutter_application_1/feature/home_page/domain/entity/get_pharamacy_order.dart';
import 'package:flutter_application_1/feature/home_page/domain/entity/get_user_detail_order.dart';
import 'package:flutter_application_1/feature/home_page/domain/entity/get_user_order.dart';
import 'package:flutter_application_1/feature/warehouse/domain/entity/get_warehouse.dart';

abstract class HomeRepository{
  Future<Either<Failure,List<PharmacyOrder>>>getPharmacyOrder();
  Future<Either<Failure,List<PharmacyOrderDescrptionModel>>>getPharmacyOrderDescription({required String orderId});
  Future<Either<Failure,List<UserOrder>>> getUserOrder();
  Future<Either<Failure,Unit>>acceptPharmacyOrder({required String orderId});
  Future<Either<Failure,Unit>>acceptUserOrder({required String orderId});
  Future<Either<Failure,List<Warehouse>>> getmostWarehouseSold();
  Future<Either<Failure,List<UserOrderdescrption>>> getUserOrderDescrption({required String orderId});
  Future<Either<Failure,List<Categoryprogramm>>> getCategory();
  Future<Either<Failure,Unit>>addCategory({required String nameCategory});
  Future<Either<Failure,List<PharmacyOrder>>> getPharmacyOrderConfrimed();
  Future<Either<Failure,List<UserOrder>>>getUserOrderConfrimed();
  
}