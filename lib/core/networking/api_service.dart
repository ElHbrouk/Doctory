import 'package:dio/dio.dart';
import 'package:doctory/core/networking/api_constants.dart';
import 'package:doctory/features/login/data/models/login_request_body.dart';
import 'package:doctory/features/login/data/models/login_response.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  //*****************************************************
  //****************  Auth Endpoints
  //*****************************************************
  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );
  




}
