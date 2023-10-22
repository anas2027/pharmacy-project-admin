


import 'package:flutter_application_1/feature/pharmcy/domain/entity/edit_pharamcy.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/usecase/edit_pharamacy_usecase.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../domain/entity/edit_pharamcy.dart';

class Editpharmacycontroller extends GetxController{
    EditpharamcyUseCase editpharamcyUseCase;
    Editpharmacycontroller({required this.editpharamcyUseCase});
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
    var SelectedItem=''.obs;
    void upDateSelectedItem(String value){
 SelectedItem.value=value;

           
    }

  Future EditPharmacyfun({required EditPharmacy editPharmacy})async{
    editpharamcyUseCase(editPharmacy: editPharmacy); 
    Get.offAllNamed('/HomePage');
  }

   
}