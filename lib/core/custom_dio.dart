import 'package:dio/dio.dart';

class CustomDio {
  var _dio;

  CustomDio() {
    _dio = Dio();
    _dio.interceptors
        .add(InterceptorsWrapper(onRequest: _onRequest, onError: _onError));
  }

  CustomDio.withAuthentication() {
    _dio = Dio();
    _dio.interceptors
        .add(InterceptorsWrapper(onRequest: _onRequest, onError: _onError));
  }

  _onError(DioError e) async {
    return e.type;
  }

  Dio get instance => _dio;

  _onRequest(RequestOptions options) async {
    options.headers['Accept'] = 'application/json';
  }
}
