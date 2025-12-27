import 'package:dio/dio.dart';
import 'package:flutter_network_client_sample/shared/app_logger.dart';
import 'package:retrofit/retrofit.dart';

class DefaultParserErrorLogger extends ParseErrorLogger {


  @override
  void logError(
    Object error,
    StackTrace stackTrace,
    RequestOptions options,
    Response response,
  ) {
    AppLogger().error(error, stackTrace: stackTrace);
  }
}
