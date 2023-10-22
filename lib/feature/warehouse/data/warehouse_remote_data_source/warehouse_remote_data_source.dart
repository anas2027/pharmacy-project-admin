// ignore_for_file: unused_local_variable

import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/error/exception.dart';
import 'package:flutter_application_1/feature/user/data/model/user_data_model.dart';
import 'package:flutter_application_1/feature/warehouse/data/warehouse_model/warehouse_edit_model.dart';
import 'package:flutter_application_1/feature/warehouse/data/warehouse_model/warehouse_model.dart';
import 'package:flutter_application_1/feature/warehouse/data/warehouse_model/warehouse_model_addoredit.dart';
import 'package:flutter_application_1/feature/warehouse/data/warehouse_model/warehouse_wallet_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;

abstract class WarehouseRemoteDataSource {
  Future<List<WarehouseModel>>getWarehouse();
    Future<Unit>addWarehouse({required AddWarehouseOrEditModel addWarehouseOrEditModel} );

  Future<Unit>editWarehousse({required WarehouseEditModel warehouseEditModel });
  Future<Unit>deleteWarehouse({required String warehouseId});
  Future<Unit>addnewbalancewarehouse({required String warehouse , required String newquant});
  Future<Unit> ressetPhAccountbalanace({required String warehouseId});
  Future<List<WarehouseWalletModel>> getWarehouseWallet ({required String userId});
  Future<List<WarehouseModel>> searchWarehouse({required String warehouseName});

}
class WarehouseRemoteDataSorceImpl extends WarehouseRemoteDataSource {
   final http.Client client;

  WarehouseRemoteDataSorceImpl({required this.client});
  @override
  Future<List<WarehouseModel>> getWarehouse() async{
    final response = await client
        .get(Uri.parse('http://127.0.0.1:8000/api/warehouse'), );
      print(response.body); 
    if (response.statusCode == 200) {

      final responsejson = jsonDecode(response.body);
         final List decodeJson = json.decode(response.body) as List; 
 
      final List<WarehouseModel> myMedcineModels = decodeJson 
          .map<WarehouseModel>((e) => WarehouseModel.fromJson(e)) 
          .toList();
          print(myMedcineModels);
      return Future.value(myMedcineModels);
    } else {
     
      throw ServerException();
    }
  }
  
  @override
  Future<Unit> addWarehouse({required AddWarehouseOrEditModel addWarehouseOrEditModel }) async{
    var body={
      'name_warehouse':addWarehouseOrEditModel.name_warehouse,
      'email':addWarehouseOrEditModel.email,
      'password':addWarehouseOrEditModel.password,
      'city_warehouse':addWarehouseOrEditModel.city_warehouse,
      'street_warehouse':addWarehouseOrEditModel.streete_warehouse,
      'phone_warehouse':addWarehouseOrEditModel.phone_warehouse
    };
    final response = await client
        .post(Uri.parse('http://127.0.0.1:8000/api/houseregister'),body: body );
     print(response.statusCode);
    if (response.statusCode == 200) {
      Get.offAllNamed('/HomePage');
       Get.showSnackbar(
          const GetSnackBar(
          message: 'Add warehouse is updated successfully',
          duration: Duration(seconds: 3),
          backgroundColor:Colors.green,
          borderWidth: 30,
        

        )
      );
      return Future.value(unit);
    } else {
     
      throw ServerException();
    }
  }
  
  @override
  Future<Unit> editWarehousse({required WarehouseEditModel warehouseEditModel }) async{

        var body ={
          "id":warehouseEditModel.id,
          "name_warehouse":warehouseEditModel.name_warehouse,
          "email":warehouseEditModel.email,
          "password":warehouseEditModel.password,
          "city_warehouse":warehouseEditModel.city_warehouse,
          'street_warehouse':warehouseEditModel.street_warehouse,
          'phone_warehouse':warehouseEditModel.phone_warehouse
        };
final response = await client
        .put(Uri.parse('http://127.0.0.1:8000/api/houseupdate'),body:body );
       print(response.statusCode);
    if (response.statusCode == 200) {
            Get.offAllNamed('/HomePage');

      Get.showSnackbar(
          const GetSnackBar(
          message: 'Add warehouse is updated successfully',
          duration: Duration(seconds: 3),
          backgroundColor:Colors.green,
          borderWidth: 30,
        

        )
      );
      final responsejson = jsonDecode(response.body);
       
      return Future.value(unit);
    } else {
     
      throw ServerException();
    }
  }
  
  @override
  Future<Unit> deleteWarehouse({required String warehouseId}) async{
   final response = await client
        .delete(Uri.parse('http://127.0.0.1:8000/api/housesdelete'),body:{'id':warehouseId} );
       print(response.statusCode);
    if (response.statusCode == 200) {
      Get.showSnackbar(
          const GetSnackBar(
          message: 'Add warehouse is delete successfully',
          duration: Duration(seconds: 3),
          backgroundColor:Colors.green,
          borderWidth: 30,
        

        )
      );
      final responsejson = jsonDecode(response.body);
       
      return Future.value(unit);
    } else {
     
      throw ServerException();
    }
  }
  
  @override
  Future<Unit> addnewbalancewarehouse({required String warehouse, required String newquant}) {
    // TODO: implement addnewbalancewarehouse
    throw UnimplementedError();
  }
  
  @override
  Future<Unit> ressetPhAccountbalanace({required String warehouseId}) async{
    final response = await client
        .delete(Uri.parse('http://127.0.0.1:8000/api/walletwarehouse/reset_balance'),body:{'warehouse_id':warehouseId} );
       print(response.statusCode);
    if (response.statusCode == 200) {
      Get.showSnackbar(
          const GetSnackBar(
          message: 'Add warehouse is delete successfully',
          duration: Duration(seconds: 3),
          backgroundColor:Colors.green,
          borderWidth: 30,
        

        )
      );
      final responsejson = jsonDecode(response.body);
       
      return Future.value(unit);
    } else {
     
      throw ServerException();
    }
  }
  
  @override
  Future<List<WarehouseWalletModel>> getWarehouseWallet({required String userId}) async{
   final response = await client
        .post(Uri.parse('http://127.0.0.1:8000/api/walletget'),body:{'id':userId} );
       print(response.statusCode);
       print(response.body);
    if (response.statusCode == 200) {
        final responsejson = jsonDecode(response.body);
         final List decodeJson = json.decode(response.body) as List; 
 
      final List<WarehouseWalletModel> myMedcineModels = decodeJson 
          .map<WarehouseWalletModel>((e) => WarehouseWalletModel.fromJson(e)) 
          .toList();
          print(myMedcineModels);
      return Future.value(myMedcineModels); 
    } else {
     
      throw ServerException();
    }
  }
  
  @override
  Future<List<WarehouseModel>> searchWarehouse({required String warehouseName}) async{
   final response = await client
        .post(Uri.parse('http://127.0.0.1:8000/api/search/warehouse'),body:{'name':warehouseName} );
     
    if (response.statusCode == 200) {
        final responsejson = jsonDecode(response.body);
         final List decodeJson = json.decode(response.body) as List; 
 
      final List<WarehouseModel> myMedcineModels = decodeJson 
          .map<WarehouseModel>((e) => WarehouseModel.fromJson(e)) 
          .toList();
          print(myMedcineModels);
      return Future.value(myMedcineModels); 
    } else {
     
      throw ServerException();
    }
  }


}