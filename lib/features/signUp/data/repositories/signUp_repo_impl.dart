import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/errors/failuers.dart';
import 'package:ecommerce/features/signUp/data/data_sources/signup_ds.dart';
import 'package:ecommerce/features/signUp/data/models/SignUpModel.dart';
import 'package:ecommerce/features/signUp/domain/entities/SignUpRequestModel.dart';
import 'package:ecommerce/features/signUp/domain/repositories/signUpRepo.dart';

class SignUpRepoImpl implements SignUpRepo {
  SignUpDS signUpDS;

  SignUpRepoImpl(this.signUpDS);

  @override
  Future<Either<Failures, SignUpModel>> signUp(
      SignUpRequestModel requestModel) async {
    try {
      var result = await signUpDS.signUp(requestModel);
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }
}
