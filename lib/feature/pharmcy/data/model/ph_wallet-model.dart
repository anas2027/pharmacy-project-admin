import 'package:flutter_application_1/feature/pharmcy/domain/entity/ph_wallet.dart';

class PharmacyWalletModel extends PhWallet{
  PharmacyWalletModel({required super.id, required super.funds, required super.phId, required super.createdAt, required super.updatedAt});

  factory PharmacyWalletModel.fromJson(Map<String, dynamic> json) {
    return PharmacyWalletModel(
         id : json['id'],
    funds : json['funds'],
    phId : json['ph_id'],
    createdAt : json['created_at'],
    updatedAt : json['updated_at'],
        );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['funds'] = this.funds;
    data['ph_id'] = this.phId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}