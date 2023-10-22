// ignore_for_file: must_be_immutable, non_constant_identifier_names

import 'package:equatable/equatable.dart';

class Categoryprogramm extends Equatable{
  int id;
  String name_category;
  Categoryprogramm({required this.id,required this.name_category});
  
  @override
  List<Object?> get props => [id,name_category];
}