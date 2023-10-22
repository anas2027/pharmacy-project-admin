import 'package:flutter_application_1/feature/warehouse/domain/entity/add_warehouse_entity.dart';
import 'package:flutter_application_1/feature/warehouse/domain/entity/add_warehouse_entity.dart';
import 'package:flutter_application_1/feature/warehouse/domain/usecases/add_warehouse_usecase/add_warehouse_usecase.dart';
import 'package:get/get.dart';

class AddWarehouseController extends GetxController{
  AddWarehouseUseCase addWarehouseUseCase;
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
  AddWarehouseController({required this.addWarehouseUseCase});

  Future addWarehouse({required AddWarehouse addWarehouse})async{
    print('controller');
    await addWarehouseUseCase(addWarehouse: addWarehouse);
  }
}