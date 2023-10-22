import 'package:flutter_application_1/feature/warehouse/domain/entity/edit_warehouse.dart';

class WarehouseEditModel extends EditWarehouse{
  WarehouseEditModel({required super.id, required super.email, 
  required super.password, required super.city_warehouse,
   required super.street_warehouse, required super.phone_warehouse,
    required super.name_warehouse});
factory WarehouseEditModel.fromJson(Map<String, dynamic> json) {
    return WarehouseEditModel(id: json["id"], name_warehouse: json["name_warehouse"], email: json['email'],
    password: json['password'], city_warehouse: json['city_warehouse'],phone_warehouse: json['phone_warehouse'],
   street_warehouse: json['street_warehouse'], 
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name_warehouse': name_warehouse,
    'email': email, 'password': password,'city_warehouse': city_warehouse, 
    'phone_warehouse': phone_warehouse,'street_warehouse': street_warehouse };
  }
}