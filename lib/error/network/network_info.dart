import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

abstract class NetworkInfo {
  Future<bool> get isconnected;
}

class NetworkInfoImpl implements NetworkInfo {
  final InternetConnectionCheckerPlus connectionChecker;

  NetworkInfoImpl({required this.connectionChecker});

  @override
  Future<bool> get isconnected => connectionChecker.hasConnection;
}
