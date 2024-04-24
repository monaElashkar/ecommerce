import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/cache/shared_pref.dart';
import 'package:ecommerce/core/errors/failuers.dart';
import 'package:ecommerce/features/login/data/datasources/remote/login_ds.dart';
import 'package:ecommerce/features/login/domain/entity/ResponseEntity.dart';
import 'package:ecommerce/features/login/domain/repository/login_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: LoginRepo)
class LoginRepoImpl implements LoginRepo {
  LoginRemoteDS loginRemoteDS;

  LoginRepoImpl(this.loginRemoteDS);

  @override
  Future<Either<Failures, ResponseEntity>> login(
      String email, String password) async {
    try {
      var userModel = await loginRemoteDS.login(email, password);
      CacheHelper.saveData("token", userModel.token);
      return Right(userModel);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }
}
