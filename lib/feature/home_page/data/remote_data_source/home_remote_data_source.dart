import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/error/exception.dart';
import 'package:flutter_application_1/feature/home_page/data/model/category_model.dart';
import 'package:flutter_application_1/feature/home_page/data/model/pharmacy_order_descrption_model.dart';
import 'package:flutter_application_1/feature/home_page/data/model/pharmacy_order_model.dart';
import 'package:flutter_application_1/feature/home_page/data/model/user_order_descrption_model.dart';
import 'package:flutter_application_1/feature/home_page/data/model/user_order_model.dart';
import 'package:flutter_application_1/feature/warehouse/data/warehouse_model/warehouse_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

abstract class HomeRemoteDataSource{
  Future<List<PharmacyOrdermodel>> getpharamcyorder();
  Future<List<PharmacyOrderDescrptionModel>> getpharamcyorderDescrption({required String orderId});
  Future<List<UserOrderModel>> getUserOrder();
  Future<Unit>acceptPharmacyOrder({required String orderId});
  Future<Unit> acceptUserOrder({required String orderId});
  Future<List<WarehouseModel>> getmostWarehouseSold();
  Future<List<UserOrderDescrptionModel>>getUserOrderDescrption({required String orderId});
  Future<List<CategoryModel>> getCategory ();
  Future<Unit>addCategory ({required String nameCategory});
  Future<List<PharmacyOrdermodel>> getPharmacyOrderConfrimed();
  Future<List<UserOrderModel>> getUserOrderConfrimed();
}  
class HomeRemoteDataSourceImpl extends HomeRemoteDataSource{
  final http.Client client;
  HomeRemoteDataSourceImpl({required this.client});

  @override
  Future<List<PharmacyOrdermodel>> getpharamcyorder() async{
    String url = 'http://127.0.0.1:8000/api/all/Confirmed/orders';
    final response = await client
        .post(Uri.parse(url));

    if (response.statusCode == 200) {
         final List decodeJson = json.decode(response.body) as List; 
 
      final List<PharmacyOrdermodel> order = decodeJson 
          .map<PharmacyOrdermodel>((e) => PharmacyOrdermodel.fromJson(e)) 
          .toList();
     

      return Future.value(order);
    } else {
     
      throw ServerException();
    }
  }

  @override
  Future<List<PharmacyOrderDescrptionModel>> getpharamcyorderDescrption({required String orderId}) async{
   String url = 'http://127.0.0.1:8000/api/get/order/detail/pharmacy?id=$orderId';
    final response = await client
        .get(Uri.parse(url),);
     
    if (response.statusCode == 200) {
         final List decodeJson = json.decode(response.body) as List; 
 
      final List<PharmacyOrderDescrptionModel> order = decodeJson 
          .map<PharmacyOrderDescrptionModel>((e) => PharmacyOrderDescrptionModel.fromJson(e)) 
          .toList();
      // Get.showSnackbar(
      //   const GetSnackBar(
      //     message: 'login sucssuflly',
      //     duration: Duration(seconds: 3),
      //     backgroundColor:Colors.green,
      //     borderWidth: 30,
        

      //   ),
      // );

      // Get.offAndToNamed('/homePage');

      return Future.value(order);
    } else {
     
      throw ServerException();
    }
  }
  
  @override
  Future<List<UserOrderModel>> getUserOrder() async{
    String url = 'http://127.0.0.1:8000/api/order/user/confirm/admin';
    final response = await client
        .get(Uri.parse(url),);
            print('wdwdwdadwdawda ${response.body}');

    if (response.statusCode == 200) {

         final List decodeJson = json.decode(response.body) as List; 
 
      final List<UserOrderModel> order = decodeJson 
          .map<UserOrderModel>((e) => UserOrderModel.fromJson(e)) 
          .toList();
      print(decodeJson);
      return Future.value(order);
    } else {
     
      throw ServerException();
    }
  }
  
  @override
  Future<Unit> acceptPharmacyOrder({required String orderId}) async{
    String url = 'http://127.0.0.1:8000/api/accepted';
    final response = await client
        .post(Uri.parse(url),body: {"id": orderId});


    if (response.statusCode == 200) {

         
 Get.showSnackbar(
        const GetSnackBar(
          message: 'login sucssuflly',
          duration: Duration(seconds: 3),
          backgroundColor:Colors.green,
          borderWidth: 30,
        

        ),
      );
      return Future.value(unit);
    } else {
     
      throw ServerException();
    }
  }
  
  @override
  Future<Unit> acceptUserOrder({required String orderId}) async{
    String url = 'http://127.0.0.1:8000/api/order/accepte/admin';
    final response = await client
        .post(Uri.parse(url),
        body: {'id':orderId});
        
      var responseMessage= jsonDecode(response.body);
     var dad = responseMessage['message'];
      print('adwwawddwa $dad');
      print(response.statusCode);
      String myMessage = '$dad';
    if (response.statusCode == 200) {
      myMessage =='you cant accept this order beacause the pharmacy'?
       Get.showSnackbar(
         GetSnackBar(
          message: '$myMessage',
          duration: Duration(seconds: 3),
          backgroundColor:Colors.red,
          borderWidth: 30,
        

        ),
      ):
        Get.showSnackbar(
         GetSnackBar(
          message: 'the order is confirmed',
          duration: Duration(seconds: 3),
          backgroundColor:Colors.green,
          borderWidth: 30,
        

        ),
      );
 

      return Future.value(unit);
    } else {
     
      throw ServerException();
    }
  }
  
  @override
  Future<List<WarehouseModel>> getmostWarehouseSold() async{
  String url = 'http://127.0.0.1:8000/api/count';
    final response = await client
        .get(Uri.parse(url));

    if (response.statusCode == 200) {
         final List decodeJson = json.decode(response.body) as List; 
 
      final List<WarehouseModel> order = decodeJson 
          .map<WarehouseModel>((e) => WarehouseModel.fromJson(e)) 
          .toList();
    
      return Future.value(order);
    } else {
     
      throw ServerException();
    }
  }
  
  @override
  Future<List<UserOrderDescrptionModel>> getUserOrderDescrption({required String orderId}) async{
    String url = 'http://127.0.0.1:8000/api/order/user/confirm/admin';
    final response = await client
        .get(Uri.parse(url));

    if (response.statusCode == 200) {
         final List decodeJson = json.decode(response.body) as List; 
 
      final List<UserOrderDescrptionModel> order = decodeJson 
          .map<UserOrderDescrptionModel>((e) => UserOrderDescrptionModel.fromJson(e)) 
          .toList();
    
      return Future.value(order);
    } else {
     
      throw ServerException();
    }
  }
  
  @override
  Future<List<CategoryModel>> getCategory() async{
   String url = 'http://127.0.0.1:8000/api/Category/all';
    final response = await client
        .get(Uri.parse(url));

    if (response.statusCode == 200) {
         final List decodeJson = json.decode(response.body) as List; 
 
      final List<CategoryModel> order = decodeJson 
          .map<CategoryModel>((e) => CategoryModel.fromJson(e)) 
          .toList();
    
      return Future.value(order);
    } else {
     
      throw ServerException();
    }
  }
  
  @override
  Future<Unit> addCategory({required String nameCategory})async {
    String url = 'http://127.0.0.1:8000/api/AddCategory';
    final response = await client
        .post(Uri.parse(url),body: {"name":nameCategory});

    if (response.statusCode == 200) {
     
      return Future.value(unit);
    } else {
     
      throw ServerException();
    }
  }
  
  @override
  Future<List<PharmacyOrdermodel>> getPharmacyOrderConfrimed() async{
    String url = 'http://127.0.0.1:8000/api/all/done/orders';
    final response = await client
        .post(Uri.parse(url));

    if (response.statusCode == 200) {
         final List decodeJson = json.decode(response.body) as List; 
 
      final List<PharmacyOrdermodel> order = decodeJson 
          .map<PharmacyOrdermodel>((e) => PharmacyOrdermodel.fromJson(e)) 
          .toList();
    
      return Future.value(order);
    } else {
     
      throw ServerException();
    }
  }
  
  @override
  Future<List<UserOrderModel>> getUserOrderConfrimed() async{
    String url = 'http://127.0.0.1:8000/api/order/user/informed/admin';
    final response = await client
        .get(Uri.parse(url));

    if (response.statusCode == 200) {
         final List decodeJson = json.decode(response.body) as List; 
 
      final List<UserOrderModel> order = decodeJson 
          .map<UserOrderModel>((e) => UserOrderModel.fromJson(e)) 
          .toList();
    
      return Future.value(order);
    } else {
     
      throw ServerException();
    }
  }
  
 
  

}