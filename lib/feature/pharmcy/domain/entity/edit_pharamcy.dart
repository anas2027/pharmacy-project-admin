import 'package:equatable/equatable.dart';

class EditPharmacy extends Equatable{
  String name,name_ph,email,password,city,street,phone,id;
  EditPharmacy({required this.id, required this.name,required this.name_ph,required this.email,required this.password,required this.city,
  required this.street,required this.phone});


  @override
  // TODO: implement props
  List<Object?> get props => [name
  ,name_ph,email,password,city,street,phone,id];}