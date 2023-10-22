import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/constants.dart';
import 'package:flutter_application_1/error/exception.dart';
import 'package:flutter_application_1/feature/pharmcy/data/model/add_pharamcy_model.dart';
import 'package:flutter_application_1/feature/pharmcy/data/model/edit_pharamcy_model.dart';
import 'package:flutter_application_1/feature/pharmcy/data/model/ph_wallet-model.dart';
import 'package:flutter_application_1/feature/pharmcy/data/model/pharmacy_model.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/entity/add_pharamcy.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

abstract class PharmacyRemoteDataSource {
  Future<List<PharmacyModel>> getPharmcy();
  Future<Unit> AddPharamcy(AddPharamcyModel addPharmacy);
  Future<Unit> editpharamcyremote(
      {required EditPharmacyModel editPharmacyModel});
  Future<Unit> deletePharamcyremote({required String phId});
  Future<Unit> addnewpharmacyWallet(
      {required String newbalance, required String ph_id});
  Future<Unit> ressetwalletPharmacyWallet({required String ph_id});
  Future<List<PharmacyWalletModel>> getpharmacyWallet({required String ph_id});
  Future<List<PharmacyModel>>searchPharmaacy({required String pharmacyName});
}

class PharmacyRemoteDataSourceImpl extends PharmacyRemoteDataSource {
  final http.Client client;
  PharmacyRemoteDataSourceImpl({required this.client});

  @override
  Future<List<PharmacyModel>> getPharmcy() async {
    final response = await client.get(
      Uri.parse('http://127.0.0.1:8000/api/pharmacy'),
    );

    if (response.statusCode == 200) {
      final responsejson = jsonDecode(response.body);
      final List decodeJson = json.decode(response.body) as List;

      final List<PharmacyModel> myMedcineModels = decodeJson
          .map<PharmacyModel>((e) => PharmacyModel.fromJson(e))
          .toList();
      print(myMedcineModels);
      return Future.value(myMedcineModels);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<Unit> AddPharamcy(AddPharamcyModel addPharmacy) async {
    var body = {
      'name': addPharmacy.name,
      'name_ph': addPharmacy.name_ph,
      'email': addPharmacy.email,
      'password': addPharmacy.password,
      'street': addPharmacy.street,
      'phone': addPharmacy.phone,
      'city': addPharmacy.city,
    };
    print(body);
    final response = await client.post(
        Uri.parse('http://127.0.0.1:8000/api/pharmacyregister'),
        body: body);
    print(response.body);
    if (response.statusCode == 200) {
      Get.showSnackbar(const GetSnackBar(
        message: 'Add Pharmacy is successfully',
        duration: Duration(seconds: 3),
        backgroundColor: Colors.green,
        borderWidth: 30,
      ));
      Get.offAllNamed('/HomePage');

      return Future.value(unit);
    } else {
      print(response.statusCode);
      Get.showSnackbar(const GetSnackBar(
        message: 'Add Pharmacy is not successfully',
        duration: Duration(seconds: 3),
        backgroundColor: Colors.green,
        borderWidth: 30,
      ));
      throw ServerException();
    }
  }

  @override
  Future<Unit> deletePharamcyremote({required String phId}) async {
    final response = await client.delete(
        Uri.parse('http://127.0.0.1:8000/api/pharmacy'),
        body: {'id': phId});
    print(response.body);
    if (response.statusCode == 200) {
      Get.showSnackbar(const GetSnackBar(
        message: 'Add Pharmacy is deleted successfully',
        duration: Duration(seconds: 3),
        backgroundColor: Colors.green,
        borderWidth: 30,
      ));

      return Future.value(unit);
    } else {
      print(response.statusCode);
      Get.showSnackbar(const GetSnackBar(
        message: 'Add Pharmacy is not successfully',
        duration: Duration(seconds: 3),
        backgroundColor: Colors.green,
        borderWidth: 30,
      ));
      throw ServerException();
    }
  }

  @override
  Future<Unit> editpharamcyremote(
      {required EditPharmacyModel editPharmacyModel}) async {
    var body = {
      'id': editPharmacyModel.id,
      'name': editPharmacyModel.name,
      'name_ph': editPharmacyModel.name_ph,
      'email': editPharmacyModel.email,
      'password': editPharmacyModel.password,
      'city': editPharmacyModel.street,
      'street': editPharmacyModel.phone,
      'phone': editPharmacyModel.city,
    };
    print(body);
    final response = await client
        .put(Uri.parse('http://127.0.0.1:8000/api/pharmacys'), body: body);
        print(response.statusCode);
                print(response.body);

    if (response.statusCode == 200) {
      Get.showSnackbar(const GetSnackBar(
        message: 'Add Pharmacy is successfully',
        duration: Duration(seconds: 3),
        backgroundColor: Colors.green,
        borderWidth: 30,
      ));

      return Future.value(unit);
    } else {
      Get.showSnackbar(const GetSnackBar(
        message: 'Add Pharmacy is not successfully',
        duration: Duration(seconds: 3),
        backgroundColor: Colors.green,
        borderWidth: 30,
      ));
      throw ServerException();
    }
  }

  @override
  Future<Unit> addnewpharmacyWallet(
      {required String newbalance, required String ph_id}) async{
        var body ={
          "x": newbalance,
          "ph_id":ph_id
        };
    final response = await client
        .put(Uri.parse('http://127.0.0.1:8000/api/wallet'),body: body );
    if (response.statusCode == 200) {
      Get.showSnackbar(const GetSnackBar(
        message: 'New balance added successfully',
        duration: Duration(seconds: 3),
        backgroundColor: Colors.green,
        borderWidth: 30,
      ));

      return Future.value(unit);
    } else {
      print(response.statusCode);
      Get.showSnackbar(const GetSnackBar(
        message: 'Add Pharmacy is not successfully',
        duration: Duration(seconds: 3),
        backgroundColor: Colors.green,
        borderWidth: 30,
      ));
      throw ServerException();
    }
  }

  @override
  Future<List<PharmacyWalletModel>> getpharmacyWallet({required String ph_id}) async{
    
    final response = await client
        .get(Uri.parse('http://127.0.0.1:8000/api/wallet?ph_id=$ph_id') );
    if (response.statusCode == 200) {
      final responsejson = jsonDecode(response.body);
      final List decodeJson = json.decode(response.body) as List;

      final List<PharmacyWalletModel> myMedcineModels = decodeJson
          .map<PharmacyWalletModel>((e) => PharmacyWalletModel.fromJson(e))
          .toList();

      return Future.value(myMedcineModels);
    } else {
      
      throw ServerException();
    };
  }

  @override
  Future<Unit> ressetwalletPharmacyWallet({required String ph_id}) async{
    
       var body ={
         
          "ph_id":ph_id
        };
    final response = await client
        .post(Uri.parse('http://127.0.0.1:8000/api/walletph/reset_balance'),body: body );
    if (response.statusCode == 200) {
      Get.showSnackbar(const GetSnackBar(
        message: 'pharamacy_reset_balance successfully',
        duration: Duration(seconds: 3),
        backgroundColor: Colors.green,
        borderWidth: 30,
      ));

      return Future.value(unit);
    } else {
      print(response.statusCode);
      Get.showSnackbar(const GetSnackBar(
        message: 'pharamacy_reset_balance unsuccessfully',
        duration: Duration(seconds: 3),
        backgroundColor: Colors.green,
        borderWidth: 30,
      ));
      throw ServerException();
    }
  }
  
  @override
  Future<List<PharmacyModel>> searchPharmaacy({required String pharmacyName}) async{
     final response = await client.post(
      Uri.parse('http://127.0.0.1:8000/api/search/pharmacy'),body: {'name':pharmacyName}
    );

    if (response.statusCode == 200) {
      final responsejson = jsonDecode(response.body);
      final List decodeJson = json.decode(response.body) as List;

      final List<PharmacyModel> myMedcineModels = decodeJson
          .map<PharmacyModel>((e) => PharmacyModel.fromJson(e))
          .toList();
      print(myMedcineModels);
      return Future.value(myMedcineModels);
    } else {
      throw ServerException();
    }
  }
}
