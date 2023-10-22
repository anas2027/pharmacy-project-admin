// ignore_for_file: must_be_immutable, non_constant_identifier_names

import 'package:equatable/equatable.dart';

class UserOrderdescrption extends Equatable{
  int id,phone,phoneUser,totalPrice,status,statusUser;
  String namePh,city,Street,nameUser,cityUser,streetUser;
  UserOrderdescrption({required this.id,required this.namePh,required this.city,required this.Street,required this.phone,required this.nameUser,required this.cityUser,
  required this.streetUser,required this.phoneUser,required this.totalPrice,required this.status,required this.statusUser});
  
  @override
  
  List<Object?> get props => [ id,phone,phoneUser,totalPrice,status,statusUser,namePh,city,Street,nameUser,cityUser,streetUser];
}