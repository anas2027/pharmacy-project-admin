import 'package:flutter_application_1/feature/home_page/domain/entity/get_user_order.dart';

class UserOrderModel extends UserOrder {
  UserOrderModel(
      {required super.id,
      required super.name_ph,
      required super.phone,
      required super.phone_user,
      required super.total_price,
      required super.status,
      required super.status_user,
      required super.city,
      required super.street,
      required super.name_user,
      required super.city_user,
      required super.street_user,
      required super.created_at});
  factory UserOrderModel.fromJson(Map<String, dynamic> json) {
    return UserOrderModel(
      id: json['id'],
      name_ph: json['name_ph'],
      phone_user: json['phone_user'],
      total_price: json['total_price'],
      status: json['status'],
      status_user: json['status_user'],
      city: json['city'],
      street: json['street'],
      phone: json['phone'],
      name_user: json['name_user'],
      city_user: json['city_user'],
      street_user: json['street_user'],
      created_at: json['created_at'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name_ph': name_ph,
      'phone_user': phone_user,
      'total_price': total_price,
      'status': status,
      'status_user': status_user,
      'city': city,
      'street': street,
      'phone': phone,
      'name_user': name_user,
      'city_user': city_user,
      'street_user': street_user,
      'created_at': created_at,
    };
  }
}
