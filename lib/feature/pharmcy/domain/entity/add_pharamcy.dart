import 'package:equatable/equatable.dart';

class AddPharmacy extends Equatable{
  String name ,name_ph ,email ,password ,city ,street,phone;
  AddPharmacy({required this.name, required this.name_ph, required this.email,required  , required this.password , required this.city,required this.street,
  required this.phone});
  
  @override
  List<Object?> get props => [name,name_ph,email,password,city,street,phone];
}