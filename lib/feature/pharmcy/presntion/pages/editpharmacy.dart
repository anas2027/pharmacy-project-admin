import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/colors/colors.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/entity/edit_pharamcy.dart';
import 'package:flutter_application_1/feature/pharmcy/presntion/get_x/editpharmacy/editparmacycontroller.dart';
import 'package:get/get.dart';

class EditpharmacyPage extends StatelessWidget {
  Editpharmacycontroller controller = Get.find();
  MyColors colors = MyColors();
  List<String> citeis = [
    'Damascus',
    'Latakia',
    'Ṭartus',
    'Homs',
    'Ḥamāh',
    'Idlib',
    'Maʿlula',
    'Palmyra',
    'Al-Ḥasakah',
    'Darʿā',
    'Aleppo',
    'Al-Ḥasakah',
    'Al-Qāmishlī',
    'Al-Qunayṭirah',
    'Al-Raqqah',
    'Al-Suwayda'
  ];
  var name = TextEditingController();
  var names = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  var street = TextEditingController();
  var phone = TextEditingController();
  var city = TextEditingController();

  String phid = '';
  var medmap = Get.parameters;
  @override
  Widget build(BuildContext context) {
    name.text = '${medmap['name']}';
    names.text = '${medmap['name_ph']}';
    email.text = '${medmap['email']}';
    phone.text = '${medmap['phone']}';
    street.text = '${medmap['street']}';
    city.text = '${medmap['city']}';
    password.text = '${medmap['password']}';
    phid = "${medmap['id']}";

    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Get.offAllNamed('/HomePage');
        }, icon:const Icon(Icons.arrow_back)),
        iconTheme: IconThemeData(color: colors.appbar),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Container(
          child: const Center(
            child: Text(
              'Add Pharmacy',
              style: TextStyle(
                  color: Color.fromARGB(255, 60, 167, 177),
                  fontWeight: FontWeight.normal),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 65),
                  width: 600,
                  child: TextFormField(
                    controller: name,
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.account_balance,
                        size: 20,
                        color: colors.appbar,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 86, 108, 103),
                            width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 60, 167, 177),
                            width: 2.0),
                      ),
                      hintText: 'name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 65,
                  ),
                  width: 600,
                  child: TextFormField(
                    controller: names,
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.account_balance,
                        size: 20,
                        color: colors.appbar,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 86, 108, 103),
                            width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 60, 167, 177),
                            width: 2.0),
                      ),
                      hintText: 'name pharmacy',
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 160, top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 65, top: 20),
                    width: 1200,
                    child: TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.email_outlined,
                          size: 20,
                          color: colors.appbar,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 86, 108, 103),
                              width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 60, 167, 177),
                              width: 2.0),
                        ),
                        hintText: 'E-mail',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 65, top: 20),
                    width: 1200,
                    child: TextFormField(
                      controller: phone,
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.password_outlined,
                          size: 20,
                          color: colors.appbar,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 86, 108, 103),
                              width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 60, 167, 177),
                              width: 2.0),
                        ),
                        hintText: 'phone',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 65, top: 20),
                    width: 1200,
                    child: TextFormField(
                      controller: password,
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.password_outlined,
                          size: 20,
                          color: colors.appbar,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 86, 108, 103),
                              width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 60, 167, 177),
                              width: 2.0),
                        ),
                        hintText: 'password',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 65, top: 20),
                    width: 1200,
                    child: TextFormField(
                      controller: street,
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.streetview_rounded,
                          size: 20,
                          color: colors.appbar,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 86, 108, 103),
                              width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 60, 167, 177),
                              width: 2.0),
                        ),
                        hintText: 'Street',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 65),
                    child: Center(
                      child: Obx(
                        () => Container(
                          height: 50,
                          width: 1135,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                width: 2,
                                color: colors.appbar,
                              )),
                          child: DropdownButton<String>(
                            underline: SizedBox(),
                            isExpanded: true,
                            padding: EdgeInsets.all(6),
                            value: controller.SelectedItem.value == ""
                                ? null
                                : controller.SelectedItem.value,
                            onChanged: (newvalue) {
                              controller
                                  .upDateSelectedItem(newvalue.toString());
                            },
                            items: citeis
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: MaterialButton(
                      onPressed: () async {
                        EditPharmacy addpharmacy = EditPharmacy(
                          id: phid,
                          city: controller.SelectedItem.string,
                          name: name.text.toString(),
                          name_ph: names.text.toString(),
                          password: password.text.toString(),
                          email: email.text.toString(),
                          street: street.text.toString(),
                          phone: phone.text.toString(),
                        );
                        await controller.EditPharmacyfun(
                            editPharmacy: addpharmacy);
                      },
                      height: 40,
                      minWidth: size.width * 0.2,
                      color: Color.fromARGB(255, 228, 232, 232),
                      child: Text(
                        'Click to Add',
                        style: TextStyle(
                            color: colors.appbar,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
