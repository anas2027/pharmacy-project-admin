
import 'package:flutter_application_1/feature/pharmcy/domain/entity/edit_pharamcy.dart';

class EditPharmacyModel extends EditPharmacy{
  EditPharmacyModel({required super.name, required super.name_ph, required super.email, required super.password, required super.city, required super.street, required super.phone, required super.id});
        
    factory EditPharmacyModel.fromJson(Map<String, dynamic> json) {
    return EditPharmacyModel(
      id:json['id'],
      name: json['name'],
    city: json['city'],email: json['email'], phone: json['phone'],street: json['street'], name_ph: json['name_ph'], password: json['password']);
  }

  Map<String, dynamic> toJson() {
    return {'id':id,'name': name, 'email': email,'password':password, 'name_ph':name_ph, 'city': city,'street': street, 'phone': phone};
  }
} 