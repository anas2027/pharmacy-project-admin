import 'package:equatable/equatable.dart';

class PhWallet extends Equatable{
  int id;
  int funds;
  int phId;
  String createdAt;
  String updatedAt;

  PhWallet({required this.id,required this.funds, required this.phId,required this.createdAt,required this.updatedAt});
  
  @override
  List<Object?> get props => [id,funds,phId,createdAt,updatedAt];

}