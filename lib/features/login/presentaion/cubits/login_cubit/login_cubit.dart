import 'package:doctory/features/login/data/models/login_request_body.dart';
import 'package:doctory/features/login/data/repos/login_repo.dart';
import 'package:doctory/features/login/presentaion/cubits/login_cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  void emitLoginState(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(loginRequestBody);

    response.when(
      success: (loginResponse) {
        emit(
          LoginState.success(loginResponse),
        );
      },
      failure: (failure) {
        emit(
          LoginState.failure(message: failure.apiErrorModel.message ?? ''),
        );
      },
    );
  }
}
