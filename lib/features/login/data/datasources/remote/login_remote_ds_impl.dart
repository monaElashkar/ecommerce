import 'package:dio/dio.dart';
import 'package:ecommerce/core/api/api_manager.dart';
import 'package:ecommerce/core/api/end_points.dart';
import 'package:ecommerce/features/login/data/datasources/remote/login_ds.dart';
import 'package:ecommerce/features/login/data/models/UserModel.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: LoginRemoteDS)
class LoginRemoteDSImpl implements LoginRemoteDS {
  @override
  Future<UserModel> login(String email, String password) async {
    ApiManager apiManager = ApiManager();
    Response response = await apiManager.postData(EndPoints.login,
        body: {"email": email, "password": password});
    UserModel userModel = UserModel.fromJson(response.data);
    return userModel;
  }
}
