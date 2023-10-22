
import 'package:flutter_application_1/feature/pharmcy/domain/entity/add_pharamcy.dart';
import 'package:flutter_application_1/feature/pharmcy/domain/usecase/add_pharamcy_usecase.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class Addpharmacy_controller extends GetxController {
  AddPharmacyUseCase addPharmacyUseCase;
  Addpharmacy_controller({required this.addPharmacyUseCase});
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

 Future addPharamcy ({required AddPharmacy addPharmacy}) async{
  print(addPharmacy);
              var response = await addPharmacyUseCase(addPharmacy: addPharmacy);
            }
}