// ignore_for_file: must_be_immutable, non_constant_identifier_names

import 'package:equatable/equatable.dart';

class UserOrder extends Equatable{
  int id , phone , phone_user, total_price , status , status_user;
  String name_ph , city , street , name_user ,city_user , street_user , created_at;
  UserOrder(
    {
      required this.id,required this.name_ph, required this.phone,required this.phone_user,required this.total_price,required this.status,required this.status_user,required this.city,required this.street,required this.name_user,required this.city_user,required this.street_user,required this.created_at,
    }
  );



  @override
  List<Object?> get props => [id,phone,phone_user,total_price,status,status_user,name_ph,city,street,name_user,city_user,street_user,created_at];
}