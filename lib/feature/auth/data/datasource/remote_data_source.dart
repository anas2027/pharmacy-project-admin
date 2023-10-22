import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../../../error/exception.dart';
import '../model/login_data_model.dart';

abstract class AuthRemoteDataSorce {
  Future<Unit> login(LoginModel loginModel);
}

const baseusrl = 'http://127.0.0.1:8000/api/adminlogin';

class AuthRemoteDataSourceImpl extends AuthRemoteDataSorce {
  final http.Client client;

  AuthRemoteDataSourceImpl({required this.client});
  @override
  Future<Unit> login(LoginModel loginModel) async {
    final body = {'email': loginModel.email, 'password': loginModel.password};

    final response = await client.post(Uri.parse(baseusrl), body: body);

    if (response.statusCode == 200) {
        Get.toNamed('/HomePage');

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
      Get.showSnackbar(
        const GetSnackBar(
          isDismissible: true,
          borderRadius: 15,
          message: 'email or password is incorrct ',
          duration: Duration(seconds: 3),
          backgroundColor: Color.fromARGB(255, 60, 167, 177)
        ),
      );
      throw ServerException();
    }
  }
}
