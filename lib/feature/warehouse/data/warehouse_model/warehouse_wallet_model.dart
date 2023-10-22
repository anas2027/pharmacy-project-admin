import 'package:flutter_application_1/feature/warehouse/domain/entity/warehouse_wallet.dart';

class WarehouseWalletModel extends WarehouseWallet{
  WarehouseWalletModel({required super.id, required super.funds, required super.warehouse_id});
  factory WarehouseWalletModel.fromJson(Map<String, dynamic> json) {
    return WarehouseWalletModel(id: json['id'],funds: json['funds'],warehouse_id: json['warehouse_id']    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'funds': funds,
    'warehouse_id': warehouse_id, };
}
}