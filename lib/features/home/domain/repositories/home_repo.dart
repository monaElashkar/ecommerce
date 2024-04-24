import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/errors/failuers.dart';
import 'package:ecommerce/features/home/data/models/BrandModel.dart';
import 'package:ecommerce/features/home/data/models/CartModel.dart';
import 'package:ecommerce/features/home/data/models/CategoryModel.dart';
import 'package:ecommerce/features/home/data/models/ProductModel.dart';

import '../../data/models/ProductCartModel.dart';

abstract class HomeRepo {
  Future<Either<Failures, BrandModel>> getBrands();
  Future<Either<Failures, CategoryModel>> getCategories();
  Future<Either<Failures, ProductModel>> getProducts();
  Future<Either<Failures, ProductCartModel>> addProductToCart(String productId);
  Future<Either<Failures, CartModel>> getCart();
}
