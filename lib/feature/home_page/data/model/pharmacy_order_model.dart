


import 'package:flutter_application_1/feature/home_page/domain/entity/get_pharamacy_order.dart';

// ignore: must_be_immutable
class PharmacyOrdermodel extends PharmacyOrder{
  PharmacyOrdermodel({required super.id, required super.name_ph, required super.status, required super.status_user, required super.total_price,  required super.city, required super.street, required super.street_warehouse, required super.city_warehouse, required super.name_warehouse, required super.phone, required super.phone_warehouse});
 factory PharmacyOrdermodel.fromJson(Map<String, dynamic> json) {
    return PharmacyOrdermodel(id: json['id'], name_ph: json['name_ph'], total_price: json['total_price'],  city: json['city'], street: json['street'], street_warehouse: json['street_warehouse'], city_warehouse: json['city_warehouse'], name_warehouse: json['name_warehouse'], phone: json['phone'],phone_warehouse: json['phone_warehouse'],status: json['status'],status_user: json['status_user'],);
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name_ph': name_ph, 'status': status, 'status_user': status_user, 'total_price': total_price, 'city':city,'street':street,'street_warehouse':street_warehouse,'city_warehouse':city_warehouse,'name_warehouse':name_warehouse,'phone':phone,'phone_warehouse':phone_warehouse,};
  }
}