import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/error/failure.dart';
import 'package:flutter_application_1/feature/home_page/domain/repositry/homepage_repo.dart';

class AddCategoryUsecase{
  HomeRepository homeRepository;
  AddCategoryUsecase({required this.homeRepository});
  Future<Either<Failure,Unit>>call({required String nameCategory})async{
    return await homeRepository.addCategory(nameCategory: nameCategory);
  }
}