import 'dart:developer';

import 'package:dio/dio.dart';

class LoggerInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    log('============================ REQUEST ============================\nURI: ${options.uri}\nHEADERS: ${options.headers}\nDATA: ${options.data}\n=================================================================');
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log('============================ RESPONSE ============================\nURI: ${response.realUri}\nHEADERS: ${response.headers}\nDATA: ${response.data}\n==================================================================');
    return handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log('============================ ERROR ============================\nCODE: ${err.response?.statusCode}\nDESCRIPTION: ${err.message}\nERROR: ${err.error}\nRESPONSE: ${err.response}\n==================================================================');
    return handler.next(err);
  }
}
