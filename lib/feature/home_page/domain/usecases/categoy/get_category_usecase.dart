import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/home_page/domain/entity/category.dart';
import 'package:flutter_application_1/feature/home_page/domain/repositry/homepage_repo.dart';

class GetCategoryUseCase {
  HomeRepository homeRepository;
GetCategoryUseCase({required this.homeRepository});
Future<Either<Failure,List<Categoryprogramm>>>call()async{
  return await homeRepository.getCategory();
}
}