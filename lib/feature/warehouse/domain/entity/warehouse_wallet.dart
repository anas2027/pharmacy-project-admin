import 'package:equatable/equatable.dart';

class WarehouseWallet extends Equatable{
  int warehouse_id, funds, id;
  WarehouseWallet({required this.id,required this.funds,required this.warehouse_id});
  @override
  // TODO: implement props
  List<Object?> get props => [id,warehouse_id,funds];
}