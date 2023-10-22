import 'package:flutter_application_1/feature/warehouse/domain/entity/edit_warehouse.dart';
import 'package:flutter_application_1/feature/warehouse/domain/usecases/edit_warehouse_usecase/edit_warehouse_usecase.dart';
import 'package:get/get.dart';

class WarehouseEditController extends GetxController{

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
  EditWarehouseUseCase editWarehouseUseCase;
  WarehouseEditController({required this.editWarehouseUseCase});

  Future editWarehouse({required EditWarehouse editWarehouse})async{
    await editWarehouseUseCase(editWarehouse: editWarehouse);
  }
}