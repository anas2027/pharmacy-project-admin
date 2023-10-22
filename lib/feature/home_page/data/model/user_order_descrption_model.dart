import 'package:flutter_application_1/feature/home_page/domain/entity/get_user_detail_order.dart';

class UserOrderDescrptionModel extends UserOrderdescrption{
  UserOrderDescrptionModel({required super.id, required super.namePh, required super.city, required super.Street, required super.phone, required super.nameUser, required super.cityUser, required super.streetUser, required super.phoneUser, required super.totalPrice, required super.status, required super.statusUser});
factory UserOrderDescrptionModel.fromJson(Map<String, dynamic> json) {
    return UserOrderDescrptionModel(id: json['id'], namePh: json['name_ph'], 
    city: json['city'],  Street: json['street'], 
    phone: json['phone'], nameUser: json['name_user'], 
    streetUser: json['street_user'],
    cityUser: json['city_user'], phoneUser: json['phone_user'], 
    totalPrice: json['total_price'],status: json['status'],
    statusUser: json['status_user']);
  }

  Map<String, dynamic> toJson() {
    return {'id': id,
     'name_ph': namePh,
      'status': status,
       'status_user': statusUser,
     'total_price': totalPrice,
      'city':city,
      
      'street':Street,
      'street_user':streetUser,
      'city_user':cityUser,
      'phone_user':phoneUser,
      'phone':phone,
       
      };
  }




}