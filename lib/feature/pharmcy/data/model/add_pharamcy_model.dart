import 'package:flutter_application_1/feature/pharmcy/domain/entity/add_pharamcy.dart';

class AddPharamcyModel extends AddPharmacy{
  AddPharamcyModel({required super.name, required super.name_ph, required super.email, required super.password, required super.city, required super.street, required super.phone});
   factory AddPharamcyModel.fromJson(Map<String, dynamic> json) {
    return AddPharamcyModel(name: json['name'],
    city: json['city'],email: json['email'], phone: json['phone'],street: json['street'], name_ph: json['name_ph'], password: json['password']);
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'email': email,'password':password, 'name_ph':name_ph, 'city': city,'street': street, 'phone': phone};
  }
}