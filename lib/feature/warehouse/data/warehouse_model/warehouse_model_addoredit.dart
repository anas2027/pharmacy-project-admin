import 'package:flutter_application_1/feature/warehouse/domain/entity/add_warehouse_entity.dart';

class AddWarehouseOrEditModel extends AddWarehouse{
  AddWarehouseOrEditModel({required super.name_warehouse, required super.email, required super.password, required super.city_warehouse, required super.streete_warehouse, required super.phone_warehouse});
factory AddWarehouseOrEditModel.fromJson(Map<String, dynamic> json) {
    return AddWarehouseOrEditModel(name_warehouse: json["name_warehouse"], email: json['email'],
    password: json['password'], city_warehouse: json['city_warehouse'],phone_warehouse: json['phone_warehouse'],
    streete_warehouse: json['street_warehouse']
    );
  }

  Map<String, dynamic> toJson() {
    return { 'name_warehouse': name_warehouse,
    'email': email, 'password': password,'city_warehouse': city_warehouse, 
    'phone_warehouse': phone_warehouse,'street_warehouse': streete_warehouse };
  }
}