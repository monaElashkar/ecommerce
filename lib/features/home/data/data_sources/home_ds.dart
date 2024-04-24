import 'package:ecommerce/features/home/data/models/BrandModel.dart';
import 'package:ecommerce/features/home/data/models/CartModel.dart';
import 'package:ecommerce/features/home/data/models/CategoryModel.dart';
import 'package:ecommerce/features/home/data/models/ProductCartModel.dart';
import 'package:ecommerce/features/home/data/models/ProductModel.dart';

abstract class HomeDS{

  Future<BrandModel>getBrands();
  Future<CategoryModel>getCategories();
  Future<ProductModel>getProducts();
  Future<ProductCartModel>addProductToCart(String productId);
  Future<CartModel>getCart();
}