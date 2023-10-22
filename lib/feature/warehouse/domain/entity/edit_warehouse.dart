import 'package:equatable/equatable.dart';

class EditWarehouse extends Equatable{
  String name_warehouse ,email,password,city_warehouse,street_warehouse,phone_warehouse,id;
     EditWarehouse({required this.id,required this.email,required this.password,required this.city_warehouse,
     required this.street_warehouse,required this.phone_warehouse,required this.name_warehouse});

  @override
  List<Object?> get props => [
    name_warehouse,email,password,city_warehouse,street_warehouse,phone_warehouse,id
  ];}