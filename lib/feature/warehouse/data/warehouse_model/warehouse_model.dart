
import 'package:flutter_application_1/feature/warehouse/domain/entity/get_warehouse.dart';


class WarehouseModel extends Warehouse{
  WarehouseModel({required super.id, required super.name_warehouse, required super.email,  required super.city_warehouse, required super.street_warehouse, required super.phone_warehouse});
  factory WarehouseModel.fromJson(Map<String, dynamic> json) {
    return WarehouseModel(id: json["id"], name_warehouse: json["name_warehouse"], email: json['email'],
     city_warehouse: json['city_warehouse'],phone_warehouse: json['phone_warehouse'],
    street_warehouse: json['street_warehouse']
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name_warehouse': name_warehouse,
    'email': email, 'city_warehouse': city_warehouse, 
    'phone_warehouse': phone_warehouse,'street_warehouse': street_warehouse };
  }
  
}