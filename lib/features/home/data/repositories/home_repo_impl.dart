import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/errors/failuers.dart';
import 'package:ecommerce/features/home/data/data_sources/home_ds.dart';
import 'package:ecommerce/features/home/data/models/BrandModel.dart';
import 'package:ecommerce/features/home/data/models/CartModel.dart';
import 'package:ecommerce/features/home/data/models/CategoryModel.dart';
import 'package:ecommerce/features/home/data/models/ProductCartModel.dart';
import 'package:ecommerce/features/home/data/models/ProductModel.dart';
import 'package:ecommerce/features/home/domain/repositories/home_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HomeRepo)
class HomeRepoImpl implements HomeRepo {
  HomeDS homeDS;

  HomeRepoImpl(this.homeDS);

  @override
  Future<Either<Failures, BrandModel>> getBrands() async {
    try {
      var result = await homeDS.getBrands();
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, CategoryModel>> getCategories()async {
    try {
      var result = await homeDS.getCategories();
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, ProductModel>> getProducts() async{
    try {
      var result = await homeDS.getProducts();
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, ProductCartModel>> addProductToCart(String productId)async {
    try {
      var result = await homeDS.addProductToCart(productId);
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, CartModel>> getCart()async {
    try {
      var result = await homeDS.getCart();
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }
}
