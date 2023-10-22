import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/colors/colors.dart';
import 'package:flutter_application_1/core/constant/constants.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/entity/pharmcy.dart';
import 'package:flutter_application_1/feature/pharmcy/presntion/get_x/pharmacygetx/pharmacy_controller.dart';
import 'package:get/get.dart';

class pharmacysearch extends SearchDelegate<String> { 
  TextEditingController newquanityt = TextEditingController(); 
  List<Pharmacy> product; 
  Size size; 
  pharmacycontroller controller; 
  pharmacysearch( 
      {required this.controller, required this.size, required this.product}); 
  late MyColors colors = MyColors(); 
 
  @override 
  List<Widget> buildActions(BuildContext context) => [ 
        IconButton( 
          onPressed: () { 
            if (query.isEmpty) { 
              close(context, ''); 
            } else { 
              query = ''; 
            } 
          }, 
          icon: Icon( 
            Icons.clear, 
            color: colors.textcolors, 
            size: 30, 
          ), 
        ) 
      ]; 
 
  @override 
  Widget? buildLeading(BuildContext context) { 
    IconButton( 
      onPressed: () { 
        close(context, ''); 
      }, 
      icon: const Icon(Icons.arrow_back), 
    ); 
  } 
 
  @override 
  Widget buildResults(BuildContext context) {  
    if (query != null) { 
      final result = product 
          .where((element) => 
              element.name.toLowerCase().contains(query.toLowerCase())) 
          .toList(); 
      return RefreshIndicator( 
        color: colors.textcolors, 
        onRefresh: () => controller.getPharmcy(), 
        child: GetBuilder<pharmacycontroller>( 
          builder: (controller) { 
            if (controller.pharmacy.isEmpty) { 
              return ListView( 
                children: [ 
                  Center( 
                    child: controller.isloading 
                        ? Center( 
                            child: Padding( 
                              padding: const EdgeInsets.only(top: 350), 
                              child: CircularProgressIndicator( 
                                color: colors.textcolors, 
                              ), 
                            ), 
                          ) 
                        : TextDefault( 
                            maxLine: 30, 
                            colorText: colors.textcolors, 
                            fontWeight: FontWeight.bold, 
                            fontsize: 30, 
                            textOverflow: TextOverflow.ellipsis, 
                            contentText: 
                                '\n\n\n\n\n\n\n\n\n\n there is no medcine now swip down to refrech :('), 
                  ), 
                ], 
              ); 
            } else { 
              return SingleChildScrollView(
                child: GridView.builder( 
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisExtent: 500,
                    mainAxisSpacing: 10,
                    
                    ),
                  // hwan bdat tassmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
                    itemBuilder: (Buildcontext, index) => Padding(padding: const  EdgeInsets.all(8.0),
                    
                     
                       child: SingleChildScrollView(
                        
                         child: Column(
                                 children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    height: 400,
                                    width: 650,
                                    margin: EdgeInsets.only(left: 10,right: 10),
                                  child: Card( 
                                      elevation: 100,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                        side: BorderSide(
                                          color: Color.fromARGB(255, 52, 200, 213),
                                        )
                                      ),
                                      color: Color.fromARGB(28, 255, 255, 255),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 135,
                                            child: Container(
                                height: size.height * 0.2,
                                width: size.width * 0.88,
                                                 child: Image.network(
                                                  
                                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWiCmMHBk7djWa92N1rkjyxsdzZ42sh1M30w&usqp=CAU'),
                                               ),
                                              
                                      
                                              
                                            
                                          
                                          ),
                                        Expanded(child: Container(
                                              alignment: Alignment.centerLeft,
                                              padding: const EdgeInsets.only(left: 20,right: 5,top: 40),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Container(child: TextDefault(
                                                  maxLine: 2,
                                                  colorText: Colors.black54,
                                                  fontWeight: FontWeight.bold,
                                                  fontsize: 15,
                                                  textOverflow:
                                                      TextOverflow.ellipsis,
                                                  contentText:
                                                      'name: ${result[index].name}. '),),
              
                                                      
                                                      Container(
                                                        width: 200,
                                                        margin: EdgeInsets.only(left: 40),
                                                        child: TextDefault(
                                                  maxLine: 2,
                                                  colorText: Colors.black54,
                                                  fontWeight: FontWeight.bold,
                                                  fontsize: 15,
                                                  textOverflow:
                                                      TextOverflow.ellipsis,
                                                  contentText:
                                                      'name pharmacy: ${result[index].namePh}. '),
                       
                                                      ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(right: 14),
                                                      child: Container( width: 40,
                                                                                                    height: 35,
                                                                                                    alignment: Alignment.center,
                                                                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(5),
                                                      color: const Color(0xfffff0f0),
                                                         border: Border.all(color: Color(0XFFD24646))
                                                                                                    ),
                                                        child: IconButton(
icon: const Icon(Icons.delete,color: Colors.red,),
                                                          onPressed: () {
                                                                            },
                                                    ),
                                                        ),
                                                    ),],
                                                  ),
                                                Padding(padding: EdgeInsets.only(bottom: 5,left: 5),
                                                child: Column(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                crossAxisAlignment: CrossAxisAlignment.start,                                                children: [
                                                    Row(
                                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
                                                      children: [
                                                        Container(
                                                          width: 80,
                                                          height: 17,
                                                         
                                                         child: TextDefault(
                                                  maxLine: 2,
                                                  colorText: Colors.black54,
                    fontWeight: FontWeight.bold,
                                                  fontsize: 15,
                                                  textOverflow:
                                                      TextOverflow.ellipsis,
                                                  contentText:
                                                      'E-mail: ${result[index].email}. '),
                                                        ),
              SizedBox(
                                    height: 20,
                                  ),
              
              Container(
                                                      width: 53,
                                                      height: 17,
                                                     
                                                      child: TextDefault(
                                                  maxLine: 2,
                                                  colorText: Colors.black54,
                                                  fontWeight: FontWeight.bold,
                                                  fontsize: 15,
                                                  textOverflow:
                                                      TextOverflow.ellipsis,
                                                  contentText:
                                                      'phone: ${result[index].phone}. '),
                                            
                                                    
                                                    ),
                                                    SizedBox(
                                    height: 20,
                                  ),
              
              
               Padding(
                 padding: const EdgeInsets.only(right: 14),
                 child: Container( width: 40,
                                                    height: 35,
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(5),
                                                      color: const Color(0xfffff0f0),
                                                         border: Border.all(color: Colors.green)
                                                    ),
                                                        child: IconButton(
                                                     icon: const Icon(Icons.edit,color: Colors.green,),
                                                          onPressed: () {
                                                                            },
               ),
                                                        ),
               ),
              
              
                                                      ],
                                                    ),
                                                     
                                                     SizedBox(
                                    height: 20,
                                  ),
                                                     Container(
                                                      width: 53,
                                                      height: 17,
                                                     
                                                      child: TextDefault(
                                                  maxLine: 2,
                                                  colorText: Colors.black54,
                                                  fontWeight: FontWeight.bold,
                                                  fontsize: 15,
                                                  textOverflow:
                                                      TextOverflow.ellipsis,
                                                  contentText:
                                                      'city: ${result[index].city}.'),
                                            
              
                                                    ),
                                                    SizedBox(
                                    height: 20,
                                  ),
                                                     Container(
                                                      width: 53,
                                                      height: 17,
                                                     
                                                        child: TextDefault(
                                                  maxLine: 2,
                                                  colorText: Colors.black54,
                                                  fontWeight: FontWeight.bold,
                                                  fontsize: 15,
                                                  textOverflow:
                                                      TextOverflow.ellipsis,
                                                  contentText:
                                                      'street: ${result[index].street}. '),
                                            )
                                                    
                                                  ],
                                                ),
                                                ),
                                                ],
                                              ),
                                        ),
                                        ),
                                        
                                        
                                        ],
                                      ),
                                  ),
                       
                                  )
                                 ],
                                 
                         ),
                       ),
                     ),
                    
                    
                    
                     
                   
                itemCount: result.length),
              ); 
            } 
          }, 
        ), ); 
    } else { 
      return const Text('no medcine'); 
    } 
  } 
 
  @override 
  Widget buildSuggestions(BuildContext context) { 
    if (query != null) { 
      final result = product 
          .where((element) => 
              element.name.toLowerCase().contains(query.toLowerCase())) 
          .toList(); 
      return   GetBuilder<pharmacycontroller>( 
          builder: (controller) { 
            if (controller.pharmacy.isEmpty) { 
              return ListView( 
                children: [ 
                  Center( 
                    child: controller.isloading 
                        ? Center( 
                            child: Padding( 
                              padding: const EdgeInsets.only(top: 350), 
                              child: CircularProgressIndicator( 
                                color: colors.textcolors, 
                              ), 
                            ), 
                          ) 
                        : TextDefault( 
                            maxLine: 30, 
                            colorText: colors.textcolors, 
                            fontWeight: FontWeight.bold, 
                            fontsize: 30, 
                            textOverflow: TextOverflow.ellipsis, 
                            contentText: 
                                '\n\n\n\n\n\n\n\n\n\n there is no medcine now swip down to refrech :('), 
                  ), 
                ], 
              ); 
            } else { 
              return SingleChildScrollView(
                child: GridView.builder( 
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisExtent: 500,
                    mainAxisSpacing: 10,
                    
                    ),
                  // hwan bdat tassmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
                    itemBuilder: (Buildcontext, index) => Padding(padding: const  EdgeInsets.all(8.0),
                    
                     
                       child: SingleChildScrollView(
                        
                         child: Column(
                                 children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    height: 400,
                                    width: 650,
                                    margin: EdgeInsets.only(left: 10,right: 10),
                                  child: Card( 
                                      elevation: 100,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                        side: BorderSide(
                                          color: Color.fromARGB(255, 52, 200, 213),
                                        )
                                      ),
                                      color: Color.fromARGB(28, 255, 255, 255),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 135,
                                            child: Container(
                                height: size.height * 0.2,
                                width: size.width * 0.88,
                                                 child: Image.network(
                                                  
                                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWiCmMHBk7djWa92N1rkjyxsdzZ42sh1M30w&usqp=CAU'),
                                               ),
                                              
                                      
                                              
                                            
                                          
                                          ),
                                        Expanded(child: Container(
                                              alignment: Alignment.centerLeft,
                                              padding: const EdgeInsets.only(left: 20,right: 5,top: 40),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Container(child: TextDefault(
                                                  maxLine: 2,
                                                  colorText: Colors.black54,
                                                  fontWeight: FontWeight.bold,
                                                  fontsize: 15,
                                                  textOverflow:
                                                      TextOverflow.ellipsis,
                                                  contentText:
                                                      'name: ${result[index].name}. '),),
              
                                                      
                                                      Container(
                                                        width: 200,
                                                        margin: EdgeInsets.only(left: 40),
                                                        child: TextDefault(
                                                  maxLine: 2,
                                                  colorText: Colors.black54,
                                                  fontWeight: FontWeight.bold,
                                                  fontsize: 15,
                                                  textOverflow:
                                                      TextOverflow.ellipsis,
                                                  contentText:
                                                      'name pharmacy: ${result[index].namePh}. '),
                       
                                                      ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(right: 14),
                                                      child: Container( width: 40,
                                                                                                    height: 35,
                                                                                                    alignment: Alignment.center,
                                                                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(5),
                                                      color: const Color(0xfffff0f0),
                                                         border: Border.all(color: Color(0XFFD24646))
                                                                                                    ),
                                                        child: IconButton(
icon: const Icon(Icons.delete,color: Colors.red,),
                                                          onPressed: () {
                                                                            },
                                                    ),
                                                        ),
                                                    ),],
                                                  ),
                                                Padding(padding: EdgeInsets.only(bottom: 5,left: 5),
                                                child: Column(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                crossAxisAlignment: CrossAxisAlignment.start,                                                children: [
                                                    Row(
                                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
                                                      children: [
                                                        Container(
                                                          width: 80,
                                                          height: 17,
                                                         
                                                         child: TextDefault(
                                                  maxLine: 2,
                                                  colorText: Colors.black54,
                    fontWeight: FontWeight.bold,
                                                  fontsize: 15,
                                                  textOverflow:
                                                      TextOverflow.ellipsis,
                                                  contentText:
                                                      'E-mail: ${result[index].email}. '),
                                                        ),
              SizedBox(
                                    height: 20,
                                  ),
              
              Container(
                                                      width: 53,
                                                      height: 17,
                                                     
                                                      child: TextDefault(
                                                  maxLine: 2,
                                                  colorText: Colors.black54,
                                                  fontWeight: FontWeight.bold,
                                                  fontsize: 15,
                                                  textOverflow:
                                                      TextOverflow.ellipsis,
                                                  contentText:
                                                      'phone: ${result[index].phone}. '),
                                            
                                                    
                                                    ),
                                                    SizedBox(
                                    height: 20,
                                  ),
              
              
               Padding(
                 padding: const EdgeInsets.only(right: 14),
                 child: Container( width: 40,
                                                    height: 35,
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(5),
                                                      color: const Color(0xfffff0f0),
                                                         border: Border.all(color: Colors.green)
                                                    ),
                                                        child: IconButton(
                                                     icon: const Icon(Icons.edit,color: Colors.green,),
                                                          onPressed: () {
                                                                            },
               ),
                                                        ),
               ),
              
              
                                                      ],
                                                    ),
                                                     
                                                     SizedBox(
                                    height: 20,
                                  ),
                                                     Container(
                                                      width: 53,
                                                      height: 17,
                                                     
                                                      child: TextDefault(
                                                  maxLine: 2,
                                                  colorText: Colors.black54,
                                                  fontWeight: FontWeight.bold,
                                                  fontsize: 15,
                                                  textOverflow:
                                                      TextOverflow.ellipsis,
                                                  contentText:
                                                      'city: ${result[index].city}.'),
                                            
              
                                                    ),
                                                    SizedBox(
                                    height: 20,
                                  ),
                                                     Container(
                                                      width: 53,
                                                      height: 17,
                                                     
                                                        child: TextDefault(
                                                  maxLine: 2,
                                                  colorText: Colors.black54,
                                                  fontWeight: FontWeight.bold,
                                                  fontsize: 15,
                                                  textOverflow:
                                                      TextOverflow.ellipsis,
                                                  contentText:
                                                      'street: ${result[index].street}. '),
                                            )
                                                    
                                                  ],
                                                ),
                                                ),
                                                ],
                                              ),
                                        ),
                                        ),
                                        
                                        
                                        ],
                                      ),
                                  ),
                       
                                  )
                                 ],
                                 
                         ),
                       ),
                     ),
                    
                    
                    
                     
                   
                itemCount: result.length),
              ); 
            } 
          }, 
        );} else { 
      return const Text('no medcine'); 
    } 
  } 
}