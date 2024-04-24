import 'package:dartz/dartz.dart';
import 'package:ecommerce/features/home/data/models/CategoryModel.dart';
import 'package:ecommerce/features/home/domain/repositories/home_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failuers.dart';

@injectable
class GetCategoriesUseCase {
  HomeRepo repo;
  GetCategoriesUseCase(this.repo);

  Future<Either<Failures, CategoryModel>> call() => repo.getCategories();
}
