import 'package:flutter_application_1/feature/home_page/domain/entity/get_pharamacy_order_detail.dart';

// ignore: must_be_immutable
class PharmacyOrderDescrptionModel extends PharmacyOrderDetail {
  PharmacyOrderDescrptionModel(
      {required super.status,
      required super.name_warehouse,
      required super.city_warehouse,
      required super.name_category,
      required super.phone_warehouse,
      required super.exp,
      required super.name_med,
      required super.image,
      required super.mg,
      required super.price_customer,
      required super.price_pharmacy,
      required super.street_warehouse,
      required super.quantity,
      required super.price, required super.id});
  factory PharmacyOrderDescrptionModel.fromJson(Map<String, dynamic> json) {
    return PharmacyOrderDescrptionModel(
        status: json['status'],
        name_warehouse: json['name_warehouse'],
        city_warehouse: json['city_warehouse'],
        id: json['id'],
        name_category: json['name_category'],
        phone_warehouse: json['phone_warehouse'],
        exp: json['exp'],
        name_med: json['name_med'],
        image: json['image'],
        mg: json['mg'],
        price_customer: json['price_customer'],
        price_pharmacy: json['price_pharmacy'],
        street_warehouse: json['street_warehouse'],
        quantity: json['quantity'],
        price: json['price']);
  }

  Map<String, dynamic> toJson() {
    return {
      'price': price,
      'status': status,
      'name_warehouse': name_warehouse,
      'city_warehouse': city_warehouse,
      'id': id,
      'name_category': name_category,
      'phone_warehouse': phone_warehouse,
      'exp': exp,
      'name_med': name_med,
      'image': image,
      'mg': mg,
      'price_customer': price_customer,
      'price_pharmacy': price_pharmacy,
      'street_warehouse': street_warehouse,
      'quantity': quantity
    };
  }
}
