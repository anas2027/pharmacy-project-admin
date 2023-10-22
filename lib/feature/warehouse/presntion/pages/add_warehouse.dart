import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/colors/colors.dart';
import 'package:flutter_application_1/feature/warehouse/domain/entity/add_warehouse_entity.dart';
import 'package:flutter_application_1/feature/warehouse/presntion/get_x/add_warehouse_getx/add_warehouse_controller.dart';
import 'package:flutter_application_1/feature/warehouse/presntion/pages/add_warehouse.dart';
import 'package:flutter_application_1/feature/warehouse/presntion/pages/add_warehouse.dart';
import 'package:flutter_application_1/feature/warehouse/presntion/pages/add_warehouse.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'add_warehouse.dart';

class AddWarehousePage extends StatelessWidget {
   AddWarehousePage({super.key});

 AddWarehouseController controller = Get.find();
 MyColors colors = MyColors();
 List<String>citeis=[  'Damascus', 
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
    'Al-Suwayda' ];
    var name = TextEditingController();
        var nameph = TextEditingController();
    var email = TextEditingController();
    var password = TextEditingController();
    var street = TextEditingController();
    var phone = TextEditingController();


  @override
  Widget build(BuildContext context)
   {
               var size = MediaQuery.of(context).size;

    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.offAllNamed('/HomePage'),
            icon: Icon(
              Icons.arrow_back,
              color: colors.appbar,
            )),
                 iconTheme: IconThemeData(color:colors.appbar),

          centerTitle: true,
        backgroundColor: Colors.white,
        title: Container(
          child: const Center(
            child: Text(
              'Add Warehouse',
              style: TextStyle( color: Color.fromARGB(255, 60, 167, 177),fontWeight: FontWeight.normal ),
            ),
          ),
      ),
      ),
      
     body: Padding(
       padding: const EdgeInsets.only(top: 40),
       child: Column(
         children: [
          Container(
            padding: EdgeInsets.only(left: 65,top: 20),
            width:1200,
            child: TextFormField(
              controller: name,
          decoration:InputDecoration(
             suffixIcon: Icon(
                            Icons.account_balance,
                            size: 20,
                            color: colors.appbar,
                            ),
              focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(60),
     
                  borderSide: BorderSide(color: Color.fromARGB(255, 86, 108, 103), width: 2.0),
              ),
              enabledBorder: OutlineInputBorder(
     
                  borderSide: BorderSide(color:  Color.fromARGB(255, 60, 167, 177), width: 2.0),
              ),
              hintText: 'name',
          ),
          
         ),
           
         
         ),
     
           Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Container(

                padding: EdgeInsets.only(left: 65,top: 20),
                width:1200,
                    child: TextFormField(
                                        controller: email,
                  decoration:InputDecoration(
                    suffixIcon: Icon(
                                    Icons.email_outlined,
                                    size: 20,
                                    color: colors.appbar,
                                    ),
                        focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(60),
           
                          borderSide: BorderSide(color: Color.fromARGB(255, 86, 108, 103), width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:  Color.fromARGB(255, 60, 167, 177), width: 2.0),
                      ),
                      hintText: 'E-mail',
                  ),
                  
             ),
               
             
             ),
            
             Container(
            padding: EdgeInsets.only(left: 65,top: 20),
            width:1200,
                child: TextFormField(
                                    controller: phone,

              decoration:InputDecoration(
                suffixIcon: Icon(
                                Icons.password_outlined,
                                size: 20,
                                color: colors.appbar,
                                ),
                   focusedBorder: OutlineInputBorder(
                                                              borderRadius: BorderRadius.circular(60),
           
                      borderSide: BorderSide(color: Color.fromARGB(255, 86, 108, 103), width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color:  Color.fromARGB(255, 60, 167, 177), width: 2.0),
                  ),
                  hintText: 'phone',
              ),
              
             ),
           
             
             ),
            
            Container(
            padding: EdgeInsets.only(left: 65,top: 20),
            width:1200,
                child: TextFormField(
                                    controller: password,

              decoration:InputDecoration(
                suffixIcon: Icon(
                                Icons.password_outlined,
                                size: 20,
                                color: colors.appbar,
                                ),
                   focusedBorder: OutlineInputBorder(
                                                              borderRadius: BorderRadius.circular(60),
           
                      borderSide: BorderSide(color: Color.fromARGB(255, 86, 108, 103), width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color:  Color.fromARGB(255, 60, 167, 177), width: 2.0),
                  ),
                  hintText: 'password',
              ),
              
             ),
           
             
             ),
             
               Container(
            padding: EdgeInsets.only(left: 65,top: 20),
            width:1200,
                child: TextFormField(
                                    controller: street,

              decoration:InputDecoration(
                suffixIcon: Icon(
                                Icons.streetview_rounded,
                                size: 20,
                                color: colors.appbar,
                                ),
                    focusedBorder: OutlineInputBorder(
                                                              borderRadius: BorderRadius.circular(60),
           
                      borderSide: BorderSide(color: Color.fromARGB(255, 86, 108, 103), width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color:  Color.fromARGB(255, 60, 167, 177), width: 2.0),
                  ),
                  hintText: 'Street',
              ),
              
             ),
           
             
             ),
                   
                    SizedBox(
                height: 20,
              ),
                   Padding(
                     padding: const EdgeInsets.only(left: 65),
                     child: Column(
                       children: [
                         Center(
                           child: Obx(()=>
                              Container(
                                height: 50,
                                width: 1135,
                                             decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(5),
                                           border: Border.all(
                                            width: 2,
                              color: colors.appbar,
                                           )
                                         ),
                              child: DropdownButton<String>(
                                  
                                  underline: SizedBox(
                                  ),
                                  isExpanded: true,
                                  padding: EdgeInsets.all(6),
                                value:controller.SelectedItem.value==""?null:controller.SelectedItem.value,
                                onChanged: (newvalue){
                                  controller.upDateSelectedItem(newvalue.toString());
                                },
                                items:citeis.map<DropdownMenuItem<String>>((String value){
                                 return DropdownMenuItem<String>(
                                  value:value,
                                  child:Text(value),
                                  );
                                } ).toList(),
                                ),
                              ),
                                          ),
                           ),
                            SizedBox(
                height: 20,
              ),

                            MaterialButton(
                             onPressed: ( ) {
                               AddWarehouse addWarehouse = AddWarehouse(
                                 name_warehouse: name.text.toString(),
                                 email: email.text.toString(),
                                 city_warehouse: '${controller.SelectedItem}',
                                 password: password.text.toString(),
                                 phone_warehouse: phone.text.toString(),
                                 streete_warehouse: street.text.toString(),
                               );
                               controller.addWarehouse(addWarehouse: addWarehouse);
                             },
                             height: 37,
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
                       ],
                     ),
                     ),
                   
                
               
                
               
               
               
            
           
                                        
            
            
            
             ],
           ),
         
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
         ],
       ),
     ),
    );
  }
}