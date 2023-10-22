

import '../../domain/entity/pharmcy.dart';
// ignore: must_be_immutable
class PharmacyModel extends Pharmacy{
  PharmacyModel({required super.id, required super.name, required super.namePh, required super.email, required super.city, required super.street, required super.phone});
      factory PharmacyModel.fromJson(Map<String, dynamic> json) {
    return PharmacyModel(id: json['id'],name: json['name'],namePh: json['name_ph'],city: json['city'],email: json['email'], phone: json['phone'],street: json['street']);
  }

  Map<String, dynamic> toJson() {
    return {'id':id,'name': name, 'email': email, 'name_ph': namePh, 'city': city,'street': street, 'phone': phone};
  }
}