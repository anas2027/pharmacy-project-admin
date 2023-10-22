import 'package:flutter_application_1/feature/user/domain/entity/user.dart';

class UserModel extends User {
  UserModel(
      {required super.id,
      required super.name_user,
      required super.email,
      required super.city_user,
      required super.street_user,
      required super.phone_user});
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name_user: json['name_user'],
      email: json['email'],
      city_user: json['city_user'],
      phone_user: json['phone_user'],
      street_user: json['street_user'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name_User': name_user,
      'email': email,
      'city_user': city_user,
      'phone_user': phone_user,
      'street_user': street_user
    };
  }
}
