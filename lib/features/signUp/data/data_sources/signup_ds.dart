import 'package:ecommerce/features/signUp/data/models/SignUpModel.dart';
import 'package:ecommerce/features/signUp/domain/entities/SignUpRequestModel.dart';

abstract class SignUpDS{

 Future<SignUpModel> signUp(SignUpRequestModel requestModel);
}