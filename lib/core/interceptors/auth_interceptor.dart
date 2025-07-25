import 'package:abstracta_to_dos/config/config_params.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll({'x-goog-api-key': dotenv.env[ConfigurationParameters.geminiApiKey]});
    return handler.next(options);
  }
}
