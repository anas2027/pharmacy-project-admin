import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/feature/home_page/domain/entity/category.dart';

class CategoryModel extends Categoryprogramm{
  CategoryModel({required super.id, required super.name_category});
  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'],
      name_category: json['name_category']
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name_category': name_category,
     
    };
  }
}