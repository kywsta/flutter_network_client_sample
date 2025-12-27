import 'package:dartz/dartz.dart';
import 'package:flutter_network_client_sample/shared/app_logger.dart';
import 'package:retrofit/retrofit.dart';

class RetrofitApiCallAdapter<T>
    extends CallAdapter<Future<T>, Future<Either<T, Exception>>> {
  @override
  Future<Either<T, Exception>> adapt(Future<T> Function() call) async {
    try {
      return Left(await call());
    } catch (e, s) {
      AppLogger().error(e, stackTrace: s);
      return Right(Exception(e));
    }
  }
}
