import 'package:flutter_application_1/feature/home_page/data/remote_data_source/home_remote_data_source.dart';
import 'package:flutter_application_1/feature/home_page/data/repo_impl/home_repo_impl.dart';
import 'package:flutter_application_1/feature/home_page/domain/repositry/homepage_repo.dart';
import 'package:flutter_application_1/feature/home_page/domain/usecases/accept_order/accept_pharmacy_order.dart';
import 'package:flutter_application_1/feature/home_page/domain/usecases/accept_order/accept_user_order.dart';
import 'package:flutter_application_1/feature/home_page/domain/usecases/categoy/add_category_usecase.dart';
import 'package:flutter_application_1/feature/home_page/domain/usecases/categoy/get_category_usecase.dart';
import 'package:flutter_application_1/feature/home_page/domain/usecases/get_most_warehouse_sold_usecase.dart';
import 'package:flutter_application_1/feature/home_page/domain/usecases/get_pharamacy_order/get_pharamacy_order.dart';
import 'package:flutter_application_1/feature/home_page/domain/usecases/get_pharamacy_order_descrption/get_pharamacy_order_descrption_usecase.dart';
import 'package:flutter_application_1/feature/home_page/domain/usecases/get_user_order_descrption.dart';
import 'package:flutter_application_1/feature/home_page/domain/usecases/get_user_order_usecase.dart';
import 'package:flutter_application_1/feature/home_page/domain/usecases/order_confiremd_usecase/pharmacy_order_confirmed.dart';
import 'package:flutter_application_1/feature/home_page/domain/usecases/order_confiremd_usecase/user_order_confrimed.dart';
import 'package:flutter_application_1/feature/pharmcy/data/datasource/pharmcy_remote_data_source.dart';
import 'package:flutter_application_1/feature/pharmcy/data/repositry_impl/pharmacy_repo_impl.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/pharmcy_repositry/pharmcy_repositry.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/usecase/account_reset_balanace_usecase.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/usecase/add_new_balnace_wallet_usecase.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/usecase/add_pharamcy_usecase.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/usecase/delete_pharamacy_usecase.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/usecase/edit_pharamacy_usecase.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/usecase/get_pharmacy_wallet.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/usecase/get_pharmcy_usecase.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/usecase/search_pharmacy_usecase.dart';
import 'package:flutter_application_1/feature/user/data/remote_data_source/user_remote_data_source.dart';
import 'package:flutter_application_1/feature/user/data/userr_repo_impl/user_repo_impl.dart';
import 'package:flutter_application_1/feature/user/domain/user_repositry/user_repositry.dart';
import 'package:flutter_application_1/feature/user/domain/user_usecase/add_new_balance_to_user_wallet_usecase.dart';
import 'package:flutter_application_1/feature/user/domain/user_usecase/get_user_usecase.dart';
import 'package:flutter_application_1/feature/user/domain/user_usecase/get_user_wallet.dart';
import 'package:flutter_application_1/feature/user/domain/user_usecase/resset_user_account_usecase.dart';
import 'package:flutter_application_1/feature/user/domain/user_usecase/search_user_usecase.dart';
import 'package:flutter_application_1/feature/warehouse/data/warehouse_remote_data_source/warehouse_remote_data_source.dart';
import 'package:flutter_application_1/feature/warehouse/data/warehouse_repo_impl/warehouse_repo_impl.dart';
import 'package:flutter_application_1/feature/warehouse/domain/repositry/warehouse_repositry.dart';
import 'package:flutter_application_1/feature/warehouse/domain/usecases/add_warehouse_usecase/add_warehouse_usecase.dart';
import 'package:flutter_application_1/feature/warehouse/domain/usecases/delete_warehouse_usecase.dart';
import 'package:flutter_application_1/feature/warehouse/domain/usecases/edit_warehouse_usecase/edit_warehouse_usecase.dart';
import 'package:flutter_application_1/feature/warehouse/domain/usecases/get_warehouse_usecase/get_warehouse_usecase.dart';
import 'package:flutter_application_1/feature/warehouse/domain/usecases/get_warehouse_wallet_usecase.dart';
import 'package:flutter_application_1/feature/warehouse/domain/usecases/resetBalanceWarehouse_usecase.dart';
import 'package:flutter_application_1/feature/warehouse/domain/usecases/search_warehousee_usecase.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'error/network/network_info.dart';
import 'feature/auth/data/datasource/remote_data_source.dart';
import 'feature/auth/data/repositry/auth_implment_repositry.dart';
import 'feature/auth/domain/repositry/authrepositry.dart';
import 'feature/auth/domain/usecase/login_use_case.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // usecase

  sl.registerLazySingleton(() => LoginUseCase(authRepositry: sl()));
  sl.registerLazySingleton(() => GetPharmacyUsecase(pharmacyRepository: sl()));
  sl.registerLazySingleton(() => AddPharmacyUseCase(pharmacyRepository: sl()));
    sl.registerLazySingleton(() => AddnewbalanceToUesrWalletUseCase(userRepository: sl()));
    sl.registerLazySingleton(() => ResetBalanceWarehouseUseCase(warehouseRepository: sl()));
    sl.registerLazySingleton(() => RessetUserAcountUseCasse(userRepository: sl()));
    sl.registerLazySingleton(() => GetUserWalletUseCase(userRepository: sl()));
        sl.registerLazySingleton(() => GetWarehouseWalletuseCase(warehouseRepository: sl()));
        sl.registerLazySingleton(() => GetmostWarehouseSoldUseCase(homeRepository: sl()));
        sl.registerLazySingleton(() => GetUserOrderDescrptionUseCase(homeRepository: sl()));
        sl.registerLazySingleton(() => AddCategoryUsecase(homeRepository: sl()));
        sl.registerLazySingleton(() => GetCategoryUseCase(homeRepository: sl()));
        sl.registerLazySingleton(() => UserConfirmedOrderUseCase(homeRepository: sl()));
        sl.registerLazySingleton(() => PharmacyConfirmedOrderUseCase(homeRepository: sl()));
                sl.registerLazySingleton(() => SearchWarehouseUseCase(warehouseRepository: sl()));
                sl.registerLazySingleton(() => SearchUserUseCase(userRepository: sl()));



  sl.registerLazySingleton(
      () => AccountRessetBalanceUseCase(pharmacyRepository: sl()));
      
  sl.registerLazySingleton(
      () => SearchPharmaacyUseCase(pharmacyRepository: sl()));
      
      sl.registerLazySingleton(
      () => GetPharmacyWaletUseCase(pharmacyRepository: sl()));


  sl.registerLazySingleton(
      () => AddNewPharamacyWallet(pharmacyRepository: sl()));

  sl.registerLazySingleton(
      () => AddWarehouseUseCase(warehouseRepository: sl()));
  sl.registerLazySingleton(
      () => EditWarehouseUseCase(warehouseRepository: sl()));

  sl.registerLazySingleton(
      () => GetWarehouseUseCase(warehouseRepository: sl()));
  sl.registerLazySingleton(
      () => DeletePharmacyUseCase(pharmacyRepository: sl()));

  sl.registerLazySingleton(() => EditpharamcyUseCase(pharmacyRepository: sl()));
  sl.registerLazySingleton(
      () => DeleteWarehouseUseCase(warehouseRepository: sl()));
  sl.registerLazySingleton(() => GetPharmacyOrderUseCase(homeRepository: sl()));

  sl.registerLazySingleton(
      () => GetPharmacyOrderDescriptionUseCase(homeRepository: sl()));
      sl.registerLazySingleton(
      () => AcceptPharmacyOrderUseCase(homeRepository: sl()));
      sl.registerLazySingleton(
      () => AcceptUserOrderUseCase(homeRepository: sl()));
      sl.registerLazySingleton(
      () => GetUserOrderUseCase(homeRepository: sl()));
  sl.registerLazySingleton(() => GetuserUseCase(userRepository: sl()));

  //Repositores
  sl.registerLazySingleton<AuthRepositry>(
      () => AuthRepositryImp(authRemoteDataSorce: sl(), networkInfo: sl()));
  sl.registerLazySingleton<UserRepository>(
      () => UserRepoImpl(userRemoteDataSource: sl(), networkInfo: sl()));
  sl.registerLazySingleton<PharmacyRepository>(() =>
      PharmcyReposImpl(pharmacyRemoteDataSource: sl(), networkInfo: sl()));

  sl.registerLazySingleton<WarehouseRepository>(() =>
      warehouseRepoImpl(warehouseRemoteDataSource: sl(), networkInfo: sl()));
  sl.registerLazySingleton<HomeRepository>(
      () => HomeRepositoryImpl(homeRemoteDataSource: sl(), networkInfo: sl()));

  // Datasource
  sl.registerLazySingleton<AuthRemoteDataSorce>(
      () => AuthRemoteDataSourceImpl(client: sl()));
  sl.registerLazySingleton<PharmacyRemoteDataSource>(
      () => PharmacyRemoteDataSourceImpl(client: sl()));
  sl.registerLazySingleton<WarehouseRemoteDataSource>(
      () => WarehouseRemoteDataSorceImpl(client: sl()));
  sl.registerLazySingleton<HomeRemoteDataSource>(
      () => HomeRemoteDataSourceImpl(client: sl()));
       sl.registerLazySingleton<UserRemoteDataSource>(
      () => UserRemoteDataSourceImpl(client: sl()));

//! core
  sl.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(connectionChecker: sl()));
//External

//sharedPrefrence
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);

//http

  sl.registerLazySingleton(() => http.Client());
  //internetconnectionchecker
  sl.registerLazySingleton(() => InternetConnectionCheckerPlus());
}
