import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/exception.dart';
import 'package:flutter_application_1/feature/pharmcy/data/model/ph_wallet-model.dart';
import 'package:flutter_application_1/feature/user/data/model/user_data_model.dart';
import 'package:flutter_application_1/feature/user/data/model/user_model.dart';
import 'package:http/http.dart'as http;
abstract class UserRemoteDataSource {
  Future<List<UserModel>> getUser();
  Future<Unit> addnewbalanceToUesr({required String userId,required String newquantity});
  Future<Unit> ressetuserbalance({required String userId});
  Future<List<UserWalletModel>> getUserWallet({required String userId});
  Future<List<UserModel>> searchuser({required String userName});
} 
class UserRemoteDataSourceImpl extends UserRemoteDataSource{
   final http.Client client;

  UserRemoteDataSourceImpl({required this.client});
  @override
  Future<List<UserModel>> getUser() async{
     final response = await client
        .get(Uri.parse('http://127.0.0.1:8000/api/users') );
       print(response.statusCode);
    if (response.statusCode == 200) {
     final responsejson = jsonDecode(response.body);
         final List decodeJson = json.decode(response.body) as List; 
 
      final List<UserModel> userresponse = decodeJson 
          .map<UserModel>((e) => UserModel.fromJson(e)) 
          .toList();
          print(userresponse);
      
       
      return userresponse;
    } else {
     
      throw ServerException();
    }
  }
  
  @override
  Future<Unit> addnewbalanceToUesr({required String userId, required String newquantity}) async{
    print(newquantity);
    print(userId);
    final response = await client
        .put(Uri.parse('http://127.0.0.1:8000/api/walletuser'),body: {
          'user_id':userId,
          'x':newquantity
        } );
       print(response.statusCode);
    if (response.statusCode == 200) {
     final responsejson = jsonDecode(response.body);
         final List decodeJson = json.decode(response.body) as List; 

      
       
      return unit;
    } else {
     
      throw ServerException();
    }
  }
  
  @override
  Future<Unit> ressetuserbalance({required String userId}) async{
   final response = await client
        .post(Uri.parse('http://127.0.0.1:8000/api/walletusers/reset_balance',),body: {
          'user_id' : userId
        } );
       print(response.statusCode);
    if (response.statusCode == 200) {
     final responsejson = jsonDecode(response.body);
         
      return unit;
    } else {
     
      throw ServerException();
    }
  }
  
  @override
  Future<List<UserWalletModel>> getUserWallet({required String userId}) async{
   final response = await client
        .get(Uri.parse('http://127.0.0.1:8000/api/walletuser?user_id=$userId',));
       
    if (response.statusCode == 200) {
        final List decodeJson = json.decode(response.body) as List; 
 
      final List<UserWalletModel> userresponse = decodeJson 
          .map<UserWalletModel>((e) => UserWalletModel.fromJson(e)) 
          .toList();
          print(userresponse);
      return userresponse;
    } else {
     
      throw ServerException();
    }
  }
  
  @override
  Future<List<UserModel>> searchuser({required String userName}) async{
   final response = await client
        .post(Uri.parse('http://127.0.0.1:8000/api/search/users'),body: {
          'name':userName
        } );
       print(response.statusCode);
    if (response.statusCode == 200) {
     final responsejson = jsonDecode(response.body);
         final List decodeJson = json.decode(response.body) as List; 
 
      final List<UserModel> userresponse = decodeJson 
          .map<UserModel>((e) => UserModel.fromJson(e)) 
          .toList();
          print(userresponse);
      
       
      return userresponse;
    } else {
     
      throw ServerException();
    }
  }
}