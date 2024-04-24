import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/errors/failuers.dart';
import 'package:ecommerce/features/signUp/data/models/SignUpModel.dart';
import 'package:ecommerce/features/signUp/domain/entities/SignUpRequestModel.dart';

abstract class SignUpRepo {
  Future<Either<Failures, SignUpModel>> signUp(SignUpRequestModel requestModel);
}
