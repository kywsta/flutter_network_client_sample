import 'package:dio/dio.dart';
import 'package:flutter_network_client_sample/shared/auth_token_storage_impl.dart';
import 'package:flutter_network_client_sample/shared/dio_auth_token_refresh_interceptor.dart';
import 'package:flutter_network_client_sample/shared/dio_content_type_interceptor.dart';

class DioFactory {
  Dio getDio() {
    var dio = Dio();

    dio.options = BaseOptions(
      connectTimeout: const Duration(seconds: 35),
      sendTimeout: const Duration(seconds: 180),
      receiveTimeout: const Duration(seconds: 60),
    );

    // Add interceptors
    dio.interceptors.add(DioContentTypeInterceptor());

    final tokenStorage = AuthTokenStorageImpl();

    final tokenRefreshInterceptor = DioAuthTokenRefreshInterceptor(tokenStorage);

    dio.interceptors.add(tokenRefreshInterceptor.fresh);

    return dio;
  }
}
