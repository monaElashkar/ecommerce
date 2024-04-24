import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/errors/failuers.dart';
import 'package:ecommerce/features/signUp/data/models/SignUpModel.dart';
import 'package:ecommerce/features/signUp/domain/entities/SignUpRequestModel.dart';
import 'package:ecommerce/features/signUp/domain/repositories/signUpRepo.dart';

class SignUpUseCase {
  SignUpRepo repo;
  SignUpUseCase(this.repo);

  Future<Either<Failures, SignUpModel>> call(SignUpRequestModel requestModel) =>
      repo.signUp(requestModel);
}
