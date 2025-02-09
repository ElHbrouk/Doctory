import 'package:dio/dio.dart';
import 'package:doctory/core/networking/api_service.dart';
import 'package:doctory/core/networking/dio_factory.dart';
import 'package:doctory/features/login/data/repos/login_repo.dart';
import 'package:doctory/features/login/presentaion/cubits/login_cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;
void setupGetIt() {
  //* Dio & Api Service
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  //* login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
  //* signup


  //* home
}
