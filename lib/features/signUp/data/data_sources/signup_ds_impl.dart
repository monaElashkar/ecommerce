import 'package:ecommerce/core/api/api_manager.dart';
import 'package:ecommerce/core/api/end_points.dart';
import 'package:ecommerce/features/signUp/data/data_sources/signup_ds.dart';
import 'package:ecommerce/features/signUp/data/models/SignUpModel.dart';
import 'package:ecommerce/features/signUp/domain/entities/SignUpRequestModel.dart';

class SignUpDSImpl implements SignUpDS {
  @override
  Future<SignUpModel> signUp(SignUpRequestModel requestModel) async {
    ApiManager apiManager = ApiManager();

    var response = await apiManager.postData(EndPoints.signUp,
        body: requestModel.toJson());

    SignUpModel signUpModel = SignUpModel.fromJson(response.data);
    return signUpModel;
  }
}
