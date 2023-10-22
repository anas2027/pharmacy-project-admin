import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/colors/colors.dart';
import 'package:flutter_application_1/core/constant/constants.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/entity/ph_wallet.dart';
import 'package:flutter_application_1/feature/pharmcy/presntion/get_x/addwalletph/addwalletcontroller.dart';
import 'package:get/get.dart';

class AddwalletphPage extends StatelessWidget {
  Addwalletcontrollerph controller = Get.find();
  var data = Get.parameters;
  MyColors colors = MyColors();
  TextEditingController newbalance = TextEditingController();
  @override
  Widget build(BuildContext context) {
    String phId = '${data['id']}';
        var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 233, 233),
      appBar: AppBar(
        
        actions: [
           Row(
             children: [
               Text(
                    'click to reset all wallet :',
                    style: TextStyle(color: colors.appbar),
                  ),
          IconButton(
                  onPressed: () {
                    controller.ressetaccount(phId: phId);
                  },
                  icon: Icon(Icons.restart_alt_sharp,color: colors.appbar,)),
             ],
           ),
        ],
        leading: IconButton(
            onPressed: () => Get.offAllNamed('/HomePage'),
            icon: Icon(
              Icons.arrow_back,
              color: colors.appbar,
            )),
        backgroundColor: Colors.white,
      ),
      body:  Container(
        margin: EdgeInsets.only(left: 350, top: 30),
        height: size.height * 0.8,
        width: size.width * 0.5,
        child: Card(
          elevation: 2,
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                ),
                GetBuilder<Addwalletcontrollerph>(
                  builder: (controller) {
                    if (controller.wallet.isEmpty) {
                      return CircularProgressIndicator();
                    } else {
                      return TextDefault(
                          maxLine: 1,
                          colorText: colors.textcolors,
                          fontWeight: FontWeight.bold,
                          fontsize: 30,
                          textOverflow: TextOverflow.ellipsis,
                          contentText: '${controller.wallet[0].funds}');
                    }
                  },
                ),
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 500,
                    child: TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: colors.appbar, width: 0.4),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: colors.textcolors, width: 0.4),
                        ),
                      ),
                      controller: newbalance,
                    ),
                  ),
                ),
                SizedBox(height: 50),
                MaterialButton(
                  onPressed: () {
                    controller.addnewbalance(
                       phId: phId, newbalance: newbalance.text.toString());
              controller.getpharmacyWallet(pgId: phId);
                  },
                  child: Container(
                    width: 300,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: colors.textcolors,
                        borderRadius: BorderRadius.all(Radius.circular(1))),
                    child: TextDefault(
                        maxLine: 1,
                        colorText: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontsize: 30,
                        textOverflow: TextOverflow.ellipsis,
                        contentText: 'AddNewQuantiy'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
