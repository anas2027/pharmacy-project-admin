import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/home_page/presention/get_x/home_getx/home_binding.dart';
import 'package:flutter_application_1/feature/home_page/presention/get_x/home_page_getx/pharmacy_order_binding.dart';
import 'package:flutter_application_1/feature/home_page/presention/get_x/home_page_getx/user_order_binding.dart';
import 'package:flutter_application_1/feature/home_page/presention/pages/home_page.dart';
import 'package:flutter_application_1/feature/home_page/presention/pages/pharmacy_order.dart';
import 'package:flutter_application_1/feature/home_page/presention/pages/user_order.dart';
import 'package:flutter_application_1/feature/pharmcy/presntion/get_x/Addpharmacy/Addpharmacy_binding.dart';
import 'package:flutter_application_1/feature/pharmcy/presntion/get_x/addwalletph/addwalletbinding.dart';
import 'package:flutter_application_1/feature/pharmcy/presntion/get_x/editpharmacy/editpharmacybinding.dart';
import 'package:flutter_application_1/feature/pharmcy/presntion/pages/addpharmacy.dart';
import 'package:flutter_application_1/feature/pharmcy/presntion/pages/addwallet_pharmacy.dart';
import 'package:flutter_application_1/feature/pharmcy/presntion/pages/editpharmacy.dart';
import 'package:flutter_application_1/feature/user/presention/get_x/wallet/user_wallet_binding.dart';
import 'package:flutter_application_1/feature/user/presention/page/user_wallet_page.dart';
import 'package:flutter_application_1/feature/warehouse/presntion/get_x/add_warehouse_getx/add-warehouse_binding.dart';
import 'package:flutter_application_1/feature/warehouse/presntion/get_x/edit_warehouse_getx/edit_warehouse_binding.dart/edit_warehouse_binding.dart';
import 'package:flutter_application_1/feature/warehouse/presntion/get_x/warehouse_wallet_getx/warehouse_wallet_binding.dart';
import 'package:flutter_application_1/feature/warehouse/presntion/pages/add_warehouse.dart';
import 'package:flutter_application_1/feature/warehouse/presntion/pages/edit_warehouse.dart';
import 'package:flutter_application_1/feature/warehouse/presntion/pages/warehouse_wallet.dart';
import 'package:get/get.dart';
import 'feature/auth/presention/get_x/auth_binding.dart';
import 'feature/auth/presention/page/login_page.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(appBarTheme:AppBarTheme(color: Colors.black) ),
      debugShowCheckedModeBanner: false,
      getPages: [
        
 GetPage(name: '/', page: (() => Register()), binding: AuthBinding()),
 GetPage(name: '/HomePage', page: (() => HomePage()), binding: HomeBinding()),

GetPage(name: '/Addwarehouse', page: (() => AddWarehousePage()), binding: AddWarehouseBinding()),
GetPage(name: '/Editwarehouse', page: (() => EditWarehousePage()), binding: EditwarehouseBinding()),
GetPage(name: '/Addpharmacy', page: (() => AddpharmacyPage()), binding: Addpharmacybinding()),
GetPage(name: '/Editpharmacy', page: (() => EditpharmacyPage()), binding: Edit_pharmacy_binding()),
GetPage(name: '/userorderDetail', page: (() => UserOrderDetailPage()), binding: OrderUserBinding()),
GetPage(name: '/pharmacyOrderDetail', page: (() => PharmacyOrderDetailPage()), binding: PharmacyOrderBinding()),
 GetPage(name: '/addwalletph', page: (() => AddwalletphPage()), binding: addwalletphbinding()),
 GetPage(name: '/UserWalletPage', page: (() => UserWalletPage()), binding: UserWalletBinding()),
 GetPage(name: '/WarehouseWalletPage', page: (() => WarehouseWalletPage()), binding: WarehouseWalletBinding()),
 

      ],
    );
  }
}
