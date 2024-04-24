import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/errors/failuers.dart';
import 'package:ecommerce/features/home/domain/repositories/home_repo.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/ProductModel.dart';

@injectable
class GetProductsUseCase {
  HomeRepo repo;

  GetProductsUseCase(this.repo);

  Future<Either<Failures, ProductModel>> call() => repo.getProducts();
}
