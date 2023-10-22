import 'package:equatable/equatable.dart';

class Warehouse extends Equatable{
  String name_warehouse, email, city_warehouse, street_warehouse;
  int id,phone_warehouse;
   Warehouse({required this.id,required this.name_warehouse,required this.email,
   required this.city_warehouse,
   required this.street_warehouse,required this.phone_warehouse});
  @override
  // TODO: implement props
  List<Object?> get props => [name_warehouse,email,city_warehouse,street_warehouse,phone_warehouse];
}