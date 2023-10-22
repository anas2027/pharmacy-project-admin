import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/colors/colors.dart';
import 'package:flutter_application_1/core/constant/constants.dart';
import 'package:flutter_application_1/feature/auth/domain/entity/login_response.dart';
import 'package:flutter_application_1/feature/warehouse/presntion/get_x/warehouse_wallet_getx/warehouse_wallet_controller.dart';
import 'package:get/get.dart';

class WarehouseWalletPage extends StatelessWidget {
  WarehouseWalletController controller = Get.find();
  var NewQuantity = TextEditingController();
  var data = Get.parameters;
  MyColors colors = MyColors();

  @override
  Widget build(BuildContext context) {
    String warehouseId = '${data['id']}';
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 233, 233),
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Row(
            children: [
              Text(
                'click to reset all wallet :',
                style: TextStyle(color: colors.appbar),
              ),
              IconButton(
                  onPressed: () {
                    controller.ressetuserAccount(warehouseId: warehouseId);
                  },
                  icon: Icon(
                    Icons.restart_alt_sharp,
                    color: colors.appbar,
                  )),
            ],
          )
        ],
        leading: IconButton(
            onPressed: () => Get.offAllNamed('/HomePage'),
            icon: Icon(
              Icons.arrow_back,
              color: colors.appbar,
            )),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 350, top: 30),
        height: size.height * 0.8,
        width: size.width * 0.5,
        child: Card(
          elevation: 2,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GetBuilder<WarehouseWalletController>(
                  builder: (controller) {
                    if (controller.walletwarehouse.isEmpty) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 260,left: 180),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          
                          children: [
                            TextDefault(
                              colorText: colors.textcolors,
                              contentText: 'the wallet warehouse is :',
                              fontWeight: FontWeight.bold,
                              fontsize: 20,
                              maxLine: 1,
                              textOverflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            TextDefault(
                              colorText: colors.textcolors,
                              contentText: 'no wallet .',
                              fontWeight: FontWeight.bold,
                              fontsize: 20,
                              maxLine: 1,
                              textOverflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      );
                    } else {
                      return TextDefault(
                          maxLine: 1,
                          colorText: colors.textcolors,
                          fontWeight: FontWeight.bold,
                          fontsize: 40,
                          textOverflow: TextOverflow.ellipsis,
                          contentText:
                              'the wallet warehouse is : ${controller.walletwarehouse[0].funds}');
                    }
                  },
                ),
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}
