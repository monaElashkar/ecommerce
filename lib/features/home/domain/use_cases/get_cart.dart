import 'package:dartz/dartz.dart';
import 'package:ecommerce/features/home/data/models/CartModel.dart';
import 'package:ecommerce/features/home/domain/repositories/home_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failuers.dart';

@injectable
class GetCartUseCase {
  HomeRepo repo;
  GetCartUseCase(this.repo);

  Future<Either<Failures, CartModel>> call() => repo.getCart();
}