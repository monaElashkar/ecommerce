import 'package:dartz/dartz.dart';
import 'package:ecommerce/features/home/data/models/ProductCartModel.dart';
import 'package:ecommerce/features/home/domain/repositories/home_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failuers.dart';

@injectable
class AddProductToCartUseCase {
  HomeRepo repo;
  AddProductToCartUseCase(this.repo);

  Future<Either<Failures, ProductCartModel>> call({required String productId}) => repo.addProductToCart(productId);
}