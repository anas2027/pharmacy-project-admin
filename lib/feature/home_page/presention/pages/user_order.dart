import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/colors/colors.dart';
import 'package:flutter_application_1/core/constant/constants.dart';
import 'package:flutter_application_1/feature/home_page/presention/get_x/home_page_getx/user_order_controller.dart';
import 'package:get/get.dart';

class UserOrderDetailPage extends StatelessWidget {
    late MyColors colors = MyColors();
  UserOrdercontroller controller = Get.find();

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
          child: GetBuilder<UserOrdercontroller>(builder: 
          (controller) {
            if(controller.userorder.isEmpty){
              return  Text('No item on this oder');
            }
            else{
              return ListView.separated(itemBuilder: (context, index) {
                return Column(
                  children: [


                    TextDefault(maxLine: 1,
                     colorText: colors.textcolors,
                      fontWeight: FontWeight.bold,
                       fontsize: 30,
                        textOverflow: TextOverflow.ellipsis,
                         contentText: '${controller.userorder[index].namePh}'),



                          TextDefault(maxLine: 1,
                     colorText: colors.textcolors,
                      fontWeight: FontWeight.bold,
                       fontsize: 30,
                        textOverflow: TextOverflow.ellipsis,
                         contentText: '${controller.userorder[index].namePh}'),



                          TextDefault(maxLine: 1,
                     colorText: colors.textcolors,
                      fontWeight: FontWeight.bold,
                       fontsize: 30,
                        textOverflow: TextOverflow.ellipsis,
                         contentText: '${controller.userorder[index].namePh}'),



                          TextDefault(maxLine: 1,
                     colorText: colors.textcolors,
                      fontWeight: FontWeight.bold,
                       fontsize: 30,
                        textOverflow: TextOverflow.ellipsis,
                         contentText: '${controller.userorder[index].namePh}'),



                          TextDefault(maxLine: 1,
                     colorText: colors.textcolors,
                      fontWeight: FontWeight.bold,
                       fontsize: 30,
                        textOverflow: TextOverflow.ellipsis,
                         contentText: '${controller.userorder[index].namePh}'),



                          TextDefault(maxLine: 1,
                     colorText: colors.textcolors,
                      fontWeight: FontWeight.bold,
                       fontsize: 30,
                        textOverflow: TextOverflow.ellipsis,
                         contentText: '${controller.userorder[index].namePh}'),



                          TextDefault(maxLine: 1,
                     colorText: colors.textcolors,
                      fontWeight: FontWeight.bold,
                       fontsize: 30,
                        textOverflow: TextOverflow.ellipsis,
                         contentText: '${controller.userorder[index].namePh}'),

                       
                       

                       TextDefault(maxLine: 1,
                          colorText: colors.textcolors,
                          fontWeight: FontWeight.bold,
                          fontsize: 30,
                          textOverflow: TextOverflow.ellipsis,
                           contentText: '${controller.userorder[index].namePh}'),






                  ]
                );
              }, separatorBuilder: (context, index) {
                return SizedBox(height: size.height*0.3,);
              }, itemCount: controller.userorder.length);
            }
          },),
        ),
      ),
      
      );  
    
  }
}