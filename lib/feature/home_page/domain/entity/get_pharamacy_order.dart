import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class PharmacyOrder extends Equatable {
  String name_ph,
      city,
      street,
      street_warehouse,
      city_warehouse,
      name_warehouse;
  int id, phone, phone_warehouse, total_price, status, status_user;
  PharmacyOrder(
      {required this.id,
      required this.name_ph,
      required this.city,
      required this.street,
      required this.street_warehouse,
      required this.city_warehouse,
      required this.name_warehouse,
      required this.phone,
      required this.phone_warehouse,
      required this.total_price,
      required this.status,
      required this.status_user});

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        name_ph,
        city,
        street,
        street_warehouse,
        city_warehouse,
        name_warehouse,
        phone,
        phone_warehouse,
        total_price,
        status,
        status_user
      ];
}
