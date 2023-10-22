import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/colors/colors.dart';
import 'package:flutter_application_1/core/constant/constants.dart';
import 'package:flutter_application_1/feature/home_page/presention/get_x/home_getx/home_controller.dart';
import 'package:flutter_application_1/feature/user/presention/get_x/wallet/user_wallet_controller.dart';
import 'package:get/get.dart';
//Pharmacist
class HomePage extends StatelessWidget {
  MyColors colors = MyColors();
  HomeController controller = Get.find();
  TextEditingController pharmacy = TextEditingController();
    TextEditingController warehouse = TextEditingController();
  TextEditingController user = TextEditingController();

  var CategoryName= TextEditingController();
  @override
  Widget build(BuildContext context) {
        var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: colors.backgroundColor,
      
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Drawer(elevation: 0,backgroundColor: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Image(
                image: const NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2w2xulG0ti1cG-WhLbSUbMkoeiUYRTmyleTYr-3NNtp0Urvs6BkPh2LqmIJjfXGZj1UI&usqp=CAU'),
                width:size.width*0.3 ,
                height: size.height*0.2,),
            ),
             SizedBox(
              height: size.height*0.6,
               child: ListView.separated(
                
                itemBuilder: (context, index) =>   GetBuilder<HomeController>(
                  builder: (controller) =>   GestureDetector(

                    onTap: () {
                      controller.drawerIndex = index;
                      controller.update();
                    },
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(controller.drawerIcon[index].icon,color: colors.maintextcolors,),
                      SizedBox(width: size.width*0.007,),
                      TextDefault(maxLine: 1,
                       colorText: colors.maintextcolors,
                        fontWeight: FontWeight.bold,
                         fontsize: index == controller.drawerIndex? 30 :15,
                          textOverflow: TextOverflow.ellipsis,
                           contentText: '${controller.textDrawer[index]}'),
                    ],
                             ),
                  ),
                )
                      , separatorBuilder: (context, index) => SizedBox(height: size.height*0.06), itemCount: controller.textDrawer.length),
             )
           ],
        ),)
         ,GetBuilder<HomeController>(
          builder: (controller) => 
            Column(
             children: [
               Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(30),
                     child: TextDefault(maxLine: 1,
                      colorText:colors.maintextcolors,
                       fontWeight: FontWeight.bold,
                        fontsize:30,
                         textOverflow: TextOverflow.ellipsis,
                          contentText: controller.drawerIndex ==0 ?'DashBoard':
                          controller.drawerIndex ==1 ?'User Page':
                          controller.drawerIndex ==2 ?'WarehousePage':
                          controller.drawerIndex ==3?'Pharmacy Page':
                          controller.drawerIndex ==4?'OrderPage':
                          controller.drawerIndex ==5?'Confirmed Order Page' :
                          'Category'
                          
                          ),
                   ),


                //  controller.drawerIndex ==1?
                //  DropdownButton(items: [
                //   DropdownMenuItem(child: Text('damascus'),value: 'damascus',)
                //  ], onChanged: controller.dropdownValue,)










                 controller.drawerIndex ==0?
                 IconButton(onPressed: () {
                   Get.offAllNamed('/');
                 }, icon: Icon(Icons.login)):

                 controller.drawerIndex ==1?
                 Text(''):
                   controller.drawerIndex ==2?
                     IconButton(onPressed: () {
                                   Get.toNamed('/Addwarehouse');

                   }, icon: Icon(Icons.add,color: colors.maintextcolors,)):
                   controller.drawerIndex ==3?
                     IconButton(onPressed: () {
                                   Get.toNamed('/Addpharmacy');

                   }, icon: Icon(Icons.add,color: colors.maintextcolors,)):
                   controller.drawerIndex ==4?
                   //////////////////// no Widget :(
                    IconButton(onPressed: () {
                   controller.getUserOrder();
                   controller.getpharmcyOrder();  
                   }, icon: Icon(Icons.refresh)):
                   controller.drawerIndex == 5?
                   const Text(''):
                   
                GestureDetector(
                  onTap: () {
                    controller.Viewaddkategory();
                      Get.defaultDialog(
                                                      content: TextFormField(
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        controller: CategoryName,
                                                      ),
                                                      title:
                                                          'add new Category',
                                                      confirm: IconButton(
                                                          icon: Icon(
                                                            Icons.check,
                                                            color:
                                                                colors.appbar,
                                                          ),
                                                          onPressed: () async {
                                                            controller.addCategory(
                                                              cateegoyname:CategoryName.text.toString() 
                                                            );
                                                            Get.back();
                                                          }),
                                                      cancel: IconButton(
                                                          onPressed: () {
                                                            Get.back();
                                                          },
                                                          icon: Icon(
                                                            Icons.cancel,
                                                            color:
                                                                colors.appbar,
                                                          )),
                                                    );
                  },
                  child: TextDefault(maxLine: 1,
                   colorText: colors.textcolors,
                    fontWeight:FontWeight.bold, 
                    fontsize: 30,
                     textOverflow: TextOverflow.ellipsis,
                      contentText: 'AddCategory'),
                )

                     
                   
                







                 ],
               ),
                     
              controller.drawerIndex ==0?
              /////////////////// DashBoard Page
                dashBoard(size, controller):
                controller.drawerIndex ==1?
                /////////////////  UserPage
                userCart(size, controller) :
                ///////////////// Warehouse Page
                controller.drawerIndex ==2?
                warehouse_card(size, controller)
 :            ///////////////////   Pharmacy Page
                controller.drawerIndex ==3?
                pharmacy_card(size, controller)
 :
 //////////////////////////////// Order Page
                controller.drawerIndex ==4?
               orderCard(size, controller):
                controller.drawerIndex ==5?
                ///////////////// order Confiredmd page
                  Padding(
            padding: const EdgeInsets.only(left: 70),
            child: Container( height: size.height*0.84,
                    width: size.width*0.65,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          GestureDetector(
                            onTap: () {
                              controller.pharmacyOrUser = true;
                              controller.update();
                            },
                            child: TextDefault(maxLine: 1,
                             colorText: controller.pharmacyOrUser? colors.maintextcolors :colors.textcolors,
                              fontWeight: FontWeight.bold,
                               fontsize: 30,
                                textOverflow: TextOverflow.ellipsis,
                                 contentText: 'PharmacyOrder'),
                          ),
                                GestureDetector(
                                  onTap: () {
                                  controller.pharmacyOrUser = false;
                              controller.update();

                                  },
                                  child: TextDefault(maxLine: 1,
                                                         colorText:controller.pharmacyOrUser? colors.textcolors:colors.maintextcolors,
                                                          fontWeight: FontWeight.bold,
                                                           fontsize: 30,
                                                            textOverflow: TextOverflow.ellipsis,
                                                             contentText: 'UserOrder'),
                                )
                        ],),
                      controller.pharmacyOrUser?
                      ////////////////////// pharmacy Order //////////////////////////////////////
                        Expanded(
                          child: ListView.separated(itemBuilder: (context, index) {
                            return Card(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                                                
                                                                
                                      TextDefault(maxLine: 1,
                                       colorText: colors.textcolors,
                                        fontWeight: FontWeight.bold,
                                         fontsize: 30,
                                          textOverflow: TextOverflow.ellipsis,
                                           contentText: 'Pharmacy ${controller.pharmacyconfirmedOrder[index].name_ph}, warehouse: ${controller.pharmacyconfirmedOrder[index].name_warehouse}'),
                                              TextDefault(maxLine: 1,
                                       colorText: colors.textcolors,
                                        fontWeight: FontWeight.bold,
                                         fontsize: 30,
                                          textOverflow: TextOverflow.ellipsis,
                                           contentText: 'Pharmacy ${controller.pharmacyconfirmedOrder[index].city}, warehouse: ${controller.pharmacyconfirmedOrder[index].city_warehouse}')
                                                                 ,   TextDefault(maxLine: 1,
                                       colorText: colors.textcolors,
                                        fontWeight: FontWeight.bold,
                                         fontsize: 30,
                                          textOverflow: TextOverflow.ellipsis,
                                           contentText: 'Pharmacy ${controller.pharmacyconfirmedOrder[index].phone}, warehouse: ${controller.pharmacyconfirmedOrder[index].phone_warehouse}')
                                                                 , 
                                                                
                                              
                                    ],),
                                  ),
                               
                               Column(
                                
                                
                                children: [

                                  IconButton(onPressed: () {
                                    Get.toNamed('/pharmacyOrderDetail',parameters: {'id':'${controller.pharmacyconfirmedOrder[index].id}'});
                                  }, icon: Icon(Icons.info),color: colors.maintextcolors,),
                                Container(
                                  child: TextDefault(maxLine: 1,
                                   colorText: colors.maintextcolors,
                                    fontWeight: FontWeight.bold,
                                     fontsize: 30,
                                      textOverflow: TextOverflow.ellipsis,
                                       contentText:   int.parse('${controller.pharmacyconfirmedOrder[index].status}') ==0?'Waiting': 'Confirmed'),
                                ),
                                int.parse('${controller.pharmacyconfirmedOrder[index].status}') ==0?
                                IconButton(onPressed: () {
                                                                        controller.acceptPharmcyOrder(orderId: '${controller.pharmacyOrder[index].id}');

                                }, icon:Icon(Icons.check)):
                                Text('')
                               ],)
                                ],
                              ),
                            );
                          }, separatorBuilder: (context, index) {
                            return SizedBox(height: size.height*0.08,);
                          }, itemCount: controller.pharmacyconfirmedOrder.length),
                        ):
                        //////////////////////// User order //////////////////////////////////////
                        Expanded(
                          child: ListView.separated(itemBuilder: (context, index) {
                            return  Card(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                                                
                                                                
                                      TextDefault(maxLine: 1,
                                       colorText: colors.textcolors,
                                        fontWeight: FontWeight.bold,
                                         fontsize: 30,
                                          textOverflow: TextOverflow.ellipsis,
                                           contentText: 'User ${controller.userconfirmedorder[index].name_user}, Pharmacy ${controller.userconfirmedorder[index].name_ph}'),
                                              TextDefault(maxLine: 1,
                                       colorText: colors.textcolors,
                                        fontWeight: FontWeight.bold,
                                         fontsize: 30,
                                          textOverflow: TextOverflow.ellipsis,
                                           contentText: 'User ${controller.userconfirmedorder[index].city_user}, Pharmacy: ${controller.userconfirmedorder[index].city}')
                                                                 ,   TextDefault(maxLine: 1,
                                       colorText: colors.textcolors,
                                        fontWeight: FontWeight.bold,
                                         fontsize: 30,
                                          textOverflow: TextOverflow.ellipsis,
                                           contentText: 'User ${controller.userconfirmedorder[index].phone_user}, Pharmacy: ${controller.userconfirmedorder[index].phone}')
                                                                 , 
                                                                
                                              
                                    ],),
                                  ),
                               
                               Column(
                                
                                
                                children: [

                                  IconButton(onPressed: () {
                                    Get.toNamed('/userorderDetail',parameters: {'id':'${controller.userconfirmedorder[index].id}'});
                                  }, icon: Icon(Icons.info),color: colors.maintextcolors,),
                                Container(
                                  child: TextDefault(maxLine: 1,
                                   colorText: colors.maintextcolors,
                                    fontWeight: FontWeight.bold,
                                     fontsize: 30,
                                      textOverflow: TextOverflow.ellipsis,
                                       contentText:   int.parse('${controller.userconfirmedorder[index].status}') ==0?'Waiting': 'Confirmed'),
                                ),
                                int.parse('${controller.userconfirmedorder[index].status}') ==0?
                                IconButton(onPressed: () {
                                                                        controller.acceptUserOrder(orderId: '${controller.userconfirmedorder[index].id}');

                                }, icon:Icon(Icons.check)):
                                Text('')
                               ],)
                                ],
                              ),
                            );
                  ;
                          }, separatorBuilder: (context, index) {
                            return SizedBox(height: size.height*0.08,);
                          }, itemCount: controller.userconfirmedorder.length),
                        )
                      
                      ],
                    ),),
            ):
              
                category_card(size, controller)
              
             ],
           ),
         )
       
        ],
     
     
      ),
    );
  }

  Padding category_card(Size size, HomeController controller) {
    return Padding(
             padding: const EdgeInsets.only(left: 70),
             child: Container( height: size.height*0.84,
                  width: size.width*0.65,
                  color: Colors.white,
                  child: ListView.separated(itemBuilder: (context, index) {
                    return Card(
                        
                     elevation: 1,
                     color: colors.textcolors,
                     child: TextDefault(maxLine: 1,
                      colorText: colors.maintextcolors,
                       fontWeight: FontWeight.bold,
                        fontsize: 30,
                         textOverflow: TextOverflow.ellipsis,
                          contentText: controller.cateegoy[index].name_category),




                    );
                  }, separatorBuilder: (context, index) {
                    return SizedBox(height: size.height*0.08,);
                  }, itemCount: controller.cateegoy.length)
                  ));
  }

  Padding orderCard(Size size, HomeController controller) {
    return Padding(
               padding: const EdgeInsets.only(left: 70),
               child: Container( height: size.height*0.84,
                    width: size.width*0.65,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          GestureDetector(
                            onTap: () {
                              controller.pharmacyOrUser = true;
                              controller.update();
                            },
                            child: TextDefault(maxLine: 1,
                             colorText: controller.pharmacyOrUser? Colors.black
                              :colors.textcolors,
                              fontWeight: FontWeight.bold,
                               fontsize: 30,
                                textOverflow: TextOverflow.ellipsis,
                                 contentText: 'PharmacyOrder'),
                          ),
                                GestureDetector(
                                  onTap: () {
                                  controller.pharmacyOrUser = false;
                              controller.update();

                                  },
                                  child: TextDefault(maxLine: 1,
                                                         colorText:controller.pharmacyOrUser? colors.textcolors:Colors.black,
                                                          fontWeight: FontWeight.bold,
                                                           fontsize: 30,
                                                            textOverflow: TextOverflow.ellipsis,
                                                             contentText: 'UserOrder'),
                                )
                        ],),
                      controller.pharmacyOrUser?
                      ////////////////////// pharmacy Order //////////////////////////////////////
                        Expanded(
                          child: ListView.separated(itemBuilder: (context, index) {
                            return Card(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                                                
                                                                
                                      TextDefault(maxLine: 1,
                                       colorText: Color.fromARGB(255, 85, 123, 123),
                                        fontWeight: FontWeight.bold,
                                         fontsize: 30,
                                          textOverflow: TextOverflow.ellipsis,
                                           contentText: 'Pharmacy ${controller.pharmacyOrder[index].name_ph}, warehouse: ${controller.pharmacyOrder[index].name_warehouse}'),
                                              TextDefault(maxLine: 1,
                                       colorText: Color.fromARGB(255, 85, 123, 123),
                                        fontWeight: FontWeight.bold,
                                         fontsize: 30,
                                          textOverflow: TextOverflow.ellipsis,
                                           contentText: 'Pharmacy ${controller.pharmacyOrder[index].city}, warehouse: ${controller.pharmacyOrder[index].city_warehouse}')
                                                                 ,   TextDefault(maxLine: 1,
                                       colorText:Color.fromARGB(255, 85, 123, 123),
                                        fontWeight: FontWeight.bold,
                                         fontsize: 30,
                                          textOverflow: TextOverflow.ellipsis,
                                           contentText: 'Pharmacy ${controller.pharmacyOrder[index].phone}, warehouse: ${controller.pharmacyOrder[index].phone_warehouse}')
                                                                 , 
                                                                
                                              
                                    ],),
                                  ),
                               
                               Column(
                                
                                
                                children: [

                                  IconButton(onPressed: () {
                                    Get.toNamed('/pharmacyOrderDetail',parameters: {'id':'${controller.pharmacyOrder[index].id}'});
                                  }, icon: Icon(Icons.info),color: colors.maintextcolors,),
                                Container(
                                  child: TextDefault(maxLine: 1,
                                   colorText: Color.fromARGB(255, 85, 123, 123),
                                    fontWeight: FontWeight.bold,
                                     fontsize: 30,
                                      textOverflow: TextOverflow.ellipsis,
                                       contentText:   int.parse('${controller.pharmacyOrder[index].status}') ==0?'Waiting': 'Confirmed'),
                                ),
                                int.parse('${controller.pharmacyOrder[index].status}') ==0?
                                IconButton(onPressed: () {
                                                                        controller.acceptPharmcyOrder(orderId: '${controller.pharmacyOrder[index].id}');

                                }, icon:Icon(Icons.check)):
                                Text('')
                               ],)
                                ],
                              ),
                            );
                          }, separatorBuilder: (context, index) {
                            return SizedBox(height: size.height*0.08,);
                          }, itemCount: controller.pharmacyOrder.length),
                        ):
                        //////////////////////// User order //////////////////////////////////////
                        Expanded(
                          child: ListView.separated(itemBuilder: (context, index) {
                            return  Card(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                                                
                                                                
                                      TextDefault(maxLine: 1,
                                       colorText: Color.fromARGB(255, 85, 123, 123),
                                        fontWeight: FontWeight.bold,
                                         fontsize: 30,
                                          textOverflow: TextOverflow.ellipsis,
                                           contentText: 'User ${controller.userOrder[index].name_user}, Pharmacy ${controller.userOrder[index].name_ph}'),
                                              TextDefault(maxLine: 1,
                                       colorText:Color.fromARGB(255, 85, 123, 123),
                                        fontWeight: FontWeight.bold,
                                         fontsize: 30,
                                          textOverflow: TextOverflow.ellipsis,
                                           contentText: 'User ${controller.userOrder[index].city_user}, Pharmacy: ${controller.userOrder[index].city}')
                                                                 ,   TextDefault(maxLine: 1,
                                       colorText:Color.fromARGB(255, 85, 123, 123),
                                        fontWeight: FontWeight.bold,
                                         fontsize: 30,
                                          textOverflow: TextOverflow.ellipsis,
                                           contentText: 'User ${controller.userOrder[index].phone_user}, Pharmacy: ${controller.userOrder[index].phone}')
                                                                 , 
                                                                
                                              
                                    ],),
                                  ),
                               
                               Column(
                                
                                
                                children: [

                                  IconButton(onPressed: () {
                                    Get.toNamed('/userorderDetail',parameters: {'id':'${controller.userOrder[index].id}'});
                                  }, icon: Icon(Icons.info),color: colors.maintextcolors,),
                                Container(
                                  child: TextDefault(maxLine: 1,
                                   colorText: Color.fromARGB(255, 85, 123, 123),
                                    fontWeight: FontWeight.bold,
                                     fontsize: 30,
                                      textOverflow: TextOverflow.ellipsis,
                                       contentText:   int.parse('${controller.userOrder[index].status}') ==0?'Waiting': 'Confirmed'),
                                ),
                                int.parse('${controller.userOrder[index].status}') ==0?
                                IconButton(onPressed: () {
                                                                        controller.acceptUserOrder(orderId: '${controller.userOrder[index].id}');

                                }, icon:Icon(Icons.check)):
                                Text('')
                               ],)
                                ],
                              ),
                            );
                  ;
                          }, separatorBuilder: (context, index) {
                            return SizedBox(height: size.height*0.08,);
                          }, itemCount: controller.userOrder.length),
                        )
                      
                      ],
                    ),),
             );
  }

  Padding pharmacy_card(Size size, HomeController controller) {
    return Padding(
            padding: const EdgeInsets.only(left: 70),
            child: Container( height: size.height*0.84,
                    width: size.width*0.65,
                    color: Colors.white,
                    child:Column(
                      
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 600),
                          child: SizedBox(
                            width: size.width*0.3,
                            child: TextFormField(
                              controller: pharmacy,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 2.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: colors.textcolors,
                                            width: 2.0),
                                      ),
                                suffixIcon: IconButton(onPressed: () {
                                  controller.searchPharmacy(pharmacyName: pharmacy.text.toString());
                                }, icon: Icon(Icons.search,color: Colors.black,)),
                                prefixIcon: IconButton(onPressed: () {
                                controller.getPharmacy();
                                                                  pharmacy.clear();

                              }, icon: Icon(Icons.arrow_back,color: Colors.black))),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListView.separated(itemBuilder: (context, index) {
                            return Card(
                              elevation: 1,
                              color: colors.backgroundColor,
                              child: SizedBox(
                                height: size.height*0.25,
                                child: ListTile(
                                  
                                  leading:const Icon(Icons.local_pharmacy,color: Colors.black,), 
                                  title: SizedBox(
                                    height: size.height*0.1,
                                    child: Row(
                                      children: [
                                        TextDefault(maxLine: 1,
                                         colorText: Colors.black,
                                          fontWeight: FontWeight.bold,
                                           fontsize: 20,
                                            textOverflow: TextOverflow.ellipsis,
                                             contentText: controller.Pharmacys[index].namePh),
                                           IconButton(onPressed: () {
                                             Get.toNamed('/addwalletph',parameters: {
                                              'id':'${controller.Pharmacys[index].id}'
                                             });
                                           }, icon: const Icon(Icons.wallet))
                                       ],
                                    ),
                                  ),
                                   subtitle:        Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       TextDefault(maxLine: 1,
                                       colorText: Color.fromARGB(255, 85, 123, 123),
                                        fontWeight: FontWeight.bold,
                                         fontsize: 20,
                                          textOverflow: TextOverflow.ellipsis,
                                           contentText: 'email: ${controller.Pharmacys[index].email}'),
                                           SizedBox(
                                            height: 20,
                                           ),
                                           Row(children: [
                                            IconButton(onPressed: () {
                                                     Get.toNamed(
                                                              "/Editpharmacy",
                                                              parameters: {
                                                                "id":'${controller.Pharmacys[index].id}',
                                                                'name': controller.Pharmacys[index].namePh,
                                                                'name_ph':controller.Pharmacys[index].name,
                                                                'email': controller.Pharmacys[index].email,
                                                                'phone':'${controller.Pharmacys[index].phone}',
                                                                'street': controller.Pharmacys[index].street,
                                                                'city': controller.Pharmacys[index].city,
                                                              });
                                                 
                                            }, icon:Icon(Icons.edit,color: Colors.green,),),
                                             SizedBox(
                                                width: 50,
                                              ),
                                            IconButton(onPressed: () {
                                              controller.deltePharmcy(phId: '${controller.Pharmacys[index].id}');
                                            }, icon: const Icon(Icons.delete,color: Colors.red,))
                                           
                                           
                                           ],)
                                     ],
                                   ) ,
                                trailing: Column(
                                  children: [
                                   TextDefault(maxLine: 1,
                                   colorText: Color.fromARGB(255, 85, 123, 123),
                                    fontWeight: FontWeight.bold,
                                     fontsize: 20,
                                      textOverflow: TextOverflow.ellipsis,
                                       contentText: 'Address: ${controller.Pharmacys[index].city},${controller.Pharmacys[index].street} '),
                                       
                                            TextDefault(maxLine: 1,
                                       colorText: Color.fromARGB(255, 85, 123, 123),
                                        fontWeight: FontWeight.bold,
                                         fontsize: 20,
                                          textOverflow: TextOverflow.ellipsis,
                                           contentText: 'phone: ${controller.Pharmacys[index].phone}'),
                                       
                                  ],
                                ),
                                   isThreeLine: true,
                                       
                                ),
                              ),
                            );
                          }, separatorBuilder: (context, index) {
                            return SizedBox(height: size.height*0.03,);
                          }, itemCount: controller.Pharmacys.length),
                        ),
                      ],
                    )
                    ),
          );
  }

  Padding warehouse_card(Size size, HomeController controller) {
    return Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Container( height: size.height*0.84,
                      width: size.width*0.65,
                      color: Colors.white,
                      child:Column(
                        children: [
                           Padding(
                          padding: const EdgeInsets.only(left: 600),
                          child: SizedBox(
                            width: size.width*0.3,
                            child: TextFormField(
                              controller: warehouse,
                              decoration: InputDecoration(focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 2.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: colors.textcolors,
                                            width: 2.0),
                                      ),
                                suffixIcon: IconButton(onPressed: () {
                                  controller.searchWarehouse(warehouseName: warehouse.text.toString());
                                }, icon: Icon(Icons.search,color: Colors.black,)),
                                prefixIcon: IconButton(onPressed: () {
                                controller.getwarehouse();
                                                                  warehouse.clear();

                              }, icon: Icon(Icons.arrow_back,color: Colors.black,))),
                            ),
                          ),
                        ),
                          Expanded(
                            child: ListView.separated(itemBuilder: (context, index) {
                              return Card(
                                elevation: 1,
                                color: colors.backgroundColor,
                                child: SizedBox(
                                  height: size.height*0.25,
                                  child: ListTile(
                                    
                                    leading:const Icon(Icons.warehouse,color: Color.fromARGB(255, 4, 4, 4),), 
                                    title: SizedBox(
                                      height: size.height*0.1,
                                      child: Row(
                                        children: [
                                          TextDefault(maxLine: 1,
                                           colorText: Colors.black,
                                            fontWeight: FontWeight.bold,
                                             fontsize: 20,
                                              textOverflow: TextOverflow.ellipsis,
                                               contentText: controller.mywarehouse[index].name_warehouse),
                                             IconButton(onPressed: () {
                                               Get.toNamed('/WarehouseWalletPage',parameters: {
                                                'id':'${controller.mywarehouse[index].id}'
                                               });
                                             }, icon: const Icon(Icons.wallet))
                                         ],
                                      ),
                                    ),
                                     subtitle:        Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         TextDefault(maxLine: 1,
                                         colorText: Color.fromARGB(255, 85, 123, 123),
                                          fontWeight: FontWeight.bold,
                                           fontsize: 20,
                                            textOverflow: TextOverflow.ellipsis,
                                             contentText: 'email: ${controller.mywarehouse[index].email}'),
                                             SizedBox(
                                              height: 20,
                                             ),
                                             Row(children: [
                                              IconButton(onPressed: () {
                                                       Get.toNamed(
                                                                "/Editwarehouse",
                                                                parameters: {
                                                                  "id":'${controller.mywarehouse[index].id}',
                                                                  'name': controller.mywarehouse[index].name_warehouse,
                                                                  'email': controller.mywarehouse[index].email,
                                                                  'phone':'${controller.mywarehouse[index].phone_warehouse}',
                                                                  'street': controller.mywarehouse[index].street_warehouse,
                                                                  'city': controller.mywarehouse[index].city_warehouse,
                                                                });
                                                   
                                              }, icon:Icon(Icons.edit,color: Colors.green,),),
                                              SizedBox(
                                                width: 50,
                                              ),
                                              IconButton(onPressed: () {
                                                controller.deleteWarehouse(warehouseId: '${controller.mywarehouse[index].id}');
                                              }, icon: const Icon(Icons.delete,color: Colors.red,))
                                             
                                             
                                             ],)
                                       ],
                                     ) ,
                                  trailing: Column(
                                    children: [
                                     TextDefault(maxLine: 1,
                                     colorText: Color.fromARGB(255, 85, 123, 123),
                                      fontWeight: FontWeight.bold,
                                       fontsize: 20,
                                        textOverflow: TextOverflow.ellipsis,
                                         contentText: 'Address: ${controller.mywarehouse[index].city_warehouse},${controller.mywarehouse[index].street_warehouse} '),
                                         
                                              TextDefault(maxLine: 1,
                                         colorText: Color.fromARGB(255, 85, 123, 123),
                                          fontWeight: FontWeight.bold,
                                           fontsize: 20,
                                            textOverflow: TextOverflow.ellipsis,
                                             contentText: 'phone: ${controller.mywarehouse[index].phone_warehouse}'),
                                         
                                    ],
                                  ),
                                     isThreeLine: true,
                                         
                                  ),
                                ),
                              );
                            }, separatorBuilder: (context, index) {
                              return SizedBox(height: size.height*0.03,);
                            }, itemCount: controller.mywarehouse.length),
                          ),
                        ],
                      )
                      ),
            );
  }

  Padding userCart(Size size, HomeController controller) {
    return Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Container( height: size.height*0.84,
                        width: size.width*0.65,
                        color: Colors.white,
                        child:Column(
                          children: [
                             Padding(
                          padding: const EdgeInsets.only(left: 600),
                          child: SizedBox(
                            width: size.width*0.3,
                            child: TextFormField(
                              controller: user,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 2.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: colors.textcolors,
                                            width: 2.0),
                                      ),
                                suffixIcon: IconButton(onPressed: () {
                                  controller.searchUser(username: user.text.toString());
                                }, icon: Icon(Icons.search,color: colors.textcolors,)),
                                prefixIcon: IconButton(onPressed: () {
                                controller.getuser();
                                                                  user.clear();

                              }, icon: Icon(Icons.arrow_back,color: Colors.black,))),
                            ),
                          ),
                        ),
                            Expanded(
                              child: ListView.separated(itemBuilder: (context, index) {
                                return Card(
                                  elevation: 1,
                                  color: colors.backgroundColor,
                                  child: SizedBox(
                                    height: size.height*0.25,
                                    child: ListTile(
                                      
                                      leading:const Icon(Icons.person,color: Colors.black,), 
                                      title: SizedBox(
                                        height: size.height*0.1,
                                        child: Row(
                                          children: [
                                            TextDefault(maxLine: 1,
                                             colorText:Color.fromARGB(255, 13, 13, 13),
                                              fontWeight: FontWeight.bold,
                                               fontsize: 20,
                                                textOverflow: TextOverflow.ellipsis,
                                                 contentText: controller.user[index].name_user),
                                               IconButton(onPressed: () {
                                                 Get.toNamed('/UserWalletPage',parameters: {
                                                  'id':'${controller.user[index].id}'
                                                 });
                                               }, icon: const Icon(Icons.wallet))
                                           ],
                                        ),
                                      ),
                                       subtitle:        TextDefault(maxLine: 1,
                                       colorText: Color.fromARGB(255, 85, 123, 123),
                                        fontWeight: FontWeight.bold,
                                         fontsize: 20,
                                          textOverflow: TextOverflow.ellipsis,
                                           contentText: 'email: ${controller.user[index].email}') ,
                                    trailing: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                       TextDefault(maxLine: 1,
                                       colorText: Color.fromARGB(255, 85, 123, 123),
                                        fontWeight: FontWeight.bold,
                                         fontsize: 20,
                                          textOverflow: TextOverflow.ellipsis,
                                           contentText: 'city: ${controller.user[index].city_user}\n${controller.user[index].street_user} '),
                                           
                                                TextDefault(maxLine: 1,
                                           colorText: Color.fromARGB(255, 85, 123, 123),
                                            fontWeight: FontWeight.bold,
                                             fontsize: 20,
                                              textOverflow: TextOverflow.ellipsis,
                                               contentText: 'phone: ${controller.user[index].phone_user}'),
                                           
                                      ],
                                    ),
                                       isThreeLine: true,
                                           
                                    ),
                                  ),
                                );
                              }, separatorBuilder: (context, index) {
                                return SizedBox(height: size.height*0.03,);
                              }, itemCount: controller.user.length),
                            ),
                          ],
                        )
                        ),
              );
  }

  Padding dashBoard(Size size, HomeController controller) {
    return Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Container(
                        height: size.height*0.84,
                        width: size.width*0.65,
                        color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            TextDefault(maxLine: 1,
                        colorText: colors.maintextcolors,
                         fontWeight:FontWeight.bold,
                          fontsize:30,
                           textOverflow:TextOverflow.ellipsis,
                            contentText: 'Most Warehouse Sold :'),
                          SizedBox(
                            height: size.height*0.3,
                            child: ListView.separated(itemBuilder: (context, index) {
                              return 
                              
                              
                              Padding(
                                padding: const EdgeInsets.all(30),
                                child: Row(
                                  children: [
                                    TextDefault(maxLine: 4,
                                     colorText: Color.fromARGB(255, 85, 123, 123),
                                      fontWeight: FontWeight.bold,
                                       fontsize: 30,
                                        textOverflow: TextOverflow.ellipsis,
                                         contentText: ' name: ${controller.dashBoardWarehuse[index].name_warehouse}\n email: ${controller.dashBoardWarehuse[index].email} \n city: ${controller.dashBoardWarehuse[index].city_warehouse} \n phone:${controller.dashBoardWarehuse[index].phone_warehouse}')
                                  ],
                                ),
                              );
                            }, separatorBuilder: (context, index) {
                              return const SizedBox(height: 30,);
                              
                            }, itemCount: controller.dashBoardWarehuse.length),
                          )
                      
                               ,GetBuilder<HomeController>(
                                builder: (controller) =>  Center(
                                   child: Column(
                                     children: [
                                       IconButton(onPressed: () {
                                          controller.getWarehouseWallet(warehouseId: '${controller.dashBoardWarehuse[0].id}');
                                       }, icon:Icon(Icons.wallet,color: colors.maintextcolors,size: 60,)),
                                          const SizedBox(height: 30,),
                               TextDefault(maxLine: 1,
                                colorText: Color.fromARGB(255, 85, 123, 123),
                                 fontWeight: FontWeight.bold,
                                  fontsize: 40,
                                   textOverflow: TextOverflow.ellipsis,
                                    contentText: controller.warehosueWallet.isNotEmpty ?'balance is: ${controller.warehosueWallet[0].funds} ':'')
                                    ,
                                    
                                     ],
                                   ),
                                 ),
                                 
                               ),
                            
                      
                        ],
                      ),
                      ),
              );
  }
}