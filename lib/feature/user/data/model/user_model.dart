import 'package:flutter_application_1/feature/user/domain/entity/user_wallet.dart';

class UserWalletModel extends UserWallet{
  UserWalletModel({required super.id, required super.funds, required super.user_id});
factory UserWalletModel.fromJson(Map<String, dynamic> json) {
    return UserWalletModel(
      id: json['id'],
      funds: json['funds'],
      user_id: json['user_id'],
      );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'funds': funds,
      'user_id': user_id,
      };
  }
}