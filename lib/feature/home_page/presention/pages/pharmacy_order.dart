// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/colors/colors.dart';
import 'package:flutter_application_1/core/constant/constants.dart';
import 'package:flutter_application_1/feature/home_page/presention/get_x/home_page_getx/pharmacy_order_controller.dart';
import 'package:get/get.dart';


class PharmacyOrderDetailPage extends StatelessWidget {
  PharmacyOrderControler controler = Get.find();
  late MyColors colors = MyColors();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
            backgroundColor: colors.backgroundColor,
            appBar: AppBar(
              backgroundColor: colors.backgroundColor
              ,
              elevation: 0,
              leading: IconButton(onPressed: () {
                Get.offAllNamed('/HomePage');
              }, icon: Icon(Icons.arrow_back,color: colors.maintextcolors,)),
            
            ),
      
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Container(
          height: size.height*0.9,
          width: size.width*0.9,
          color: colors.CardAndDrawerbackground,
          child: GetBuilder<PharmacyOrderControler>(builder: 
          (controller) {
            if(controler.orderDescrption.isEmpty){
              return  Text('No item on this oder');
            }
            else{
              return ListView.separated(itemBuilder: (context, index) {
                return Column(
                  children: [
                    
              index ==0?    Padding(
                    padding: const EdgeInsets.only(right: 700),
                    child: Text('The Descpription User is :',style: TextStyle(fontWeight: FontWeight.bold,color: colors.appbar,fontSize: 30),),
                  ):Text(''),

SizedBox(
  height: 50,
),


Row(
  children: [
        Column(
    
      children: [
    
    TextDefault(maxLine: 1,
    
                         colorText: colors.textcolors,
    
                          fontWeight: FontWeight.bold,
    
                           fontsize: 30,
    
                            textOverflow: TextOverflow.ellipsis,
    
                             contentText: 'name warehouse: ${controler.orderDescrption[index].name_warehouse}'),
    
    SizedBox(
      height: 10,
    ),
    
                             TextDefault(maxLine: 1,
    
                         colorText: colors.textcolors,
    
                          fontWeight: FontWeight.bold,
    
                           fontsize: 30,
    
                            textOverflow: TextOverflow.ellipsis,
    
                             contentText: 'phone warehouse: ${controler.orderDescrption[index].phone_warehouse}'),
    
    
    SizedBox(
      height: 10,
    ),
    
    
     TextDefault(maxLine: 1,
    
                         colorText: colors.textcolors,
    
                          fontWeight: FontWeight.bold,
    
                           fontsize: 30,
    
                            textOverflow: TextOverflow.ellipsis,
    
                             contentText: 'city warehouse: ${controler.orderDescrption[index].city_warehouse}'),
    
    SizedBox(
      height: 10,
    ),
    
    
    
    
    
    TextDefault(maxLine: 1,
    
                         colorText: colors.textcolors,
    
                          fontWeight: FontWeight.bold,
    
                           fontsize: 30,
    
                            textOverflow: TextOverflow.ellipsis,
    
                             contentText: 'price customer: ${controler.orderDescrption[index].price_customer}'),
    
      ],
    
    ),
    
    SizedBox(
  width: 120,
),
    
    
    
    Column(
    
      children: [
    
         TextDefault(maxLine: 1,
    
                         colorText: colors.textcolors,
    
                          fontWeight: FontWeight.bold,
    
                           fontsize: 30,
    
                            textOverflow: TextOverflow.ellipsis,
    
                             contentText: 'name med: ${controler.orderDescrption[index].name_med}'),
    
    
    SizedBox(
      height: 10,
    ),
    
    
        TextDefault(maxLine: 1,
    
                         colorText: colors.textcolors,
    
                          fontWeight: FontWeight.bold,
    
                           fontsize: 30,
    
                            textOverflow: TextOverflow.ellipsis,
    
                             contentText: 'exp: ${controler.orderDescrption[index].exp}'),
    
    
    SizedBox(
      height: 10,
    ),
                              TextDefault(maxLine: 1,
    
                         colorText: colors.textcolors,
    
                          fontWeight: FontWeight.bold,
    
                           fontsize: 30,
    
                            textOverflow: TextOverflow.ellipsis,
    
                             contentText: 'mg: ${controler.orderDescrption[index].mg}'),
    
    SizedBox(
      height: 10,
    ),
    
                              TextDefault(maxLine: 1,
    
                         colorText: colors.textcolors,
    
                          fontWeight: FontWeight.bold,
    
                           fontsize: 30,
    
                            textOverflow: TextOverflow.ellipsis,
    
                             contentText: 'price: ${controler.orderDescrption[index].price}'),
    
      ],
    
    ),
  ],
),
                  


                  ]
                );
              }, separatorBuilder: (context, index) {
                return SizedBox(height: size.height*0.3,);
              }, itemCount: controler.orderDescrption.length);
            }
          },),
        ),
      ),
      
      );  
      
      }
}
