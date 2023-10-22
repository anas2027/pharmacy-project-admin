import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class Pharmacy extends Equatable{
  int id ,phone;
  String name,namePh,email,city,street;
  Pharmacy({required this.id,required this.name,required this.namePh,required this.email,required this.city,required this.street,required this.phone});
  


  @override
  List<Object?> get props => [id, name,namePh,email,city,street,phone];

  get name_ph => null;}