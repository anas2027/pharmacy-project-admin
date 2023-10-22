import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/colors/colors.dart';
import '../get_x/auth_controller.dart';

// ignore: must_be_immutable
class Register extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  AuthController controller = Get.find();
  late MyColors colors = MyColors();
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(179, 224, 224, 224),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: EdgeInsets.only(left: 350),
            height: size.height * 0.8,
            width: size.width * 0.5,
            child: Card(
              elevation: 100,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: BorderSide(
                    color: Color.fromARGB(255, 122, 157, 160),
                  )),
              color: Colors.white,
              child: Column(children: [
                SizedBox(
                  height: size.height * 0.01,
                ),
                SizedBox(
                  height: size.height * 0.009,
                ),
                SingleChildScrollView(
                  child: Center(
                    child: Stack(
                      children: [
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  padding: EdgeInsets.only(top: 40),
                                  height: size.height * 0.2,
                                  child: Image.network(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2w2xulG0ti1cG-WhLbSUbMkoeiUYRTmyleTYr-3NNtp0Urvs6BkPh2LqmIJjfXGZj1UI&usqp=CAU',
                                  )),
                              Padding(
                                padding: EdgeInsets.only(top: 100),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Sign',
                                      style: TextStyle(
                                          textBaseline:
                                              TextBaseline.ideographic,
                                          color: Colors.black54,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'In',
                                      style: TextStyle(
                                          textBaseline:
                                              TextBaseline.ideographic,
                                          color: colors.appbar,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: size.width * 0.30,
                                child: TextFormField(
                                  controller: email,
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: colors.appbar, width: 2.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: colors.textcolors,
                                            width: 2.0),
                                      ),
                                      prefixIcon: Icon(
                                        Icons.email,
                                        color: colors.textcolors,
                                      ),
                                      hintText: 'emailaddress'),
                                ),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Container(
                                width: size.width * 0.30,
                                child: TextFormField(
                                  controller: password,
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: colors.appbar, width: 2.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: colors.textcolors,
                                            width: 2.0),
                                      ),
                                      prefixIcon: Icon(
                                        Icons.lock,
                                        color: colors.textcolors,
                                      ),
                                      hintText: 'Password'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 50),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: MaterialButton(
                                          onPressed: () {
                                            controller.login(
                                                email.text.toString(),
                                                password.text.toString());
                                          },
                                          minWidth: size.width * 0.2,
                                          color: Color.fromARGB(
                                              255, 200, 202, 202),
                                          child: Text(
                                            'Login',
                                            style: TextStyle(
                                                color: colors.appbar,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: colors.appbar)),
                                        child: TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            'forget password',
                                            style: TextStyle(
                                                color: colors.textcolors,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      )
                                    ]),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
