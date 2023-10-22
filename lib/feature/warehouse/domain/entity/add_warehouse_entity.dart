
import 'package:equatable/equatable.dart';

class AddWarehouse extends Equatable{
  String name_warehouse, email, password, city_warehouse, streete_warehouse,phone_warehouse;

   AddWarehouse({required this.name_warehouse,required this.email,
   required this.password,required this.city_warehouse,
   required this.streete_warehouse,required this.phone_warehouse});
  @override
  // TODO: implement props
  List<Object?> get props => [name_warehouse,email,password,city_warehouse,streete_warehouse,phone_warehouse];
}