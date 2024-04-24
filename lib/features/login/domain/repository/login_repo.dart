import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/errors/failuers.dart';
import 'package:ecommerce/features/login/domain/entity/ResponseEntity.dart';

abstract class LoginRepo {
  Future<Either<Failures, ResponseEntity>> login(String email, String password);
}
