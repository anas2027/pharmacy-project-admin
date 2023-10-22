import 'package:equatable/equatable.dart';

class UserWallet extends Equatable{
  int id,funds,user_id;
  UserWallet({required this.id,required this.funds,required this.user_id}); 
  @override
  List<Object?> get props => [id,funds,user_id];
}