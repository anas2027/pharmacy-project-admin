import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class PharmacyOrderDetail extends Equatable {
  String name_warehouse,
      city_warehouse,
      street_warehouse,
      exp,
      name_med,
      image,
      name_category;
  int id,
      mg,
      phone_warehouse,
      price_pharmacy,
      price_customer,
      status,
      quantity,
      price;
  PharmacyOrderDetail(
      {required this.id,
        required this.price,
      required this.status,
      required this.name_warehouse,
      required this.city_warehouse,
      required this.name_category,
      required this.phone_warehouse,
      required this.exp,
      required this.name_med,
      required this.image,
      required this.mg,
      required this.price_customer,
      required this.price_pharmacy,
      required this.street_warehouse,
      required this.quantity});

  @override
  List<Object?> get props => [
        name_warehouse,
        city_warehouse,
        street_warehouse,
        phone_warehouse,
        exp,
        name_med,
        image,
        mg,
        price,
        price_pharmacy,
        price_customer,
        status,
        quantity,
        name_category
      ];
}
