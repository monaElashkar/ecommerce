import 'package:bloc/bloc.dart';
import 'package:ecommerce/core/enums/enums.dart';
import 'package:ecommerce/core/errors/failuers.dart';
import 'package:ecommerce/features/signUp/data/models/SignUpModel.dart';
import 'package:ecommerce/features/signUp/domain/entities/SignUpRequestModel.dart';
import 'package:ecommerce/features/signUp/domain/use_cases/signup_usecase.dart';
import 'package:meta/meta.dart';

part 'sign_up_event.dart';

part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpUseCase signUpUseCase;

  SignUpBloc(this.signUpUseCase) : super(SignUpInitState()) {
    on<SignUpButtonEvent>((event, emit) async {
      emit(state.copyWith(
        status: RequestStatus.loading,
      ));
      var result = await signUpUseCase(event.requestModel);

      result.fold((l) {
        emit(state.copyWith(status: RequestStatus.failure, failures: l));
      }, (r) {
        emit(state.copyWith(status: RequestStatus.success, model: r));
      });
    });
  }
}
