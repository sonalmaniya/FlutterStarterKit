import 'package:dio/dio.dart';
import 'failure.dart';

part './response_code.dart';
part './error_data_source.dart';

class ErrorHandler implements Exception {
  ErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      // dio error so its an error from response of the API or from dio itself
      failure = _handleError(
        error,
      );
    } else {
      // default error
      failure = ErrorDataSource.defaultSource.getFailure();
    }
  }
  late Failure failure;
}

Failure _handleError(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionTimeout:
      return ErrorDataSource.connectTimeout.getFailure();

    case DioExceptionType.sendTimeout:
      return ErrorDataSource.sendTimeout.getFailure();

    case DioExceptionType.receiveTimeout:
      return ErrorDataSource.receiveTimeout.getFailure();

    case DioExceptionType.badResponse:
      if (error.response != null && error.response?.statusCode != null && error.response?.statusMessage != null) {
        return Failure(
          error.response?.statusCode ?? 0,
          error.response?.statusMessage ?? '',
        );
      } else {
        return ErrorDataSource.defaultSource.getFailure();
      }
    case DioExceptionType.cancel:
      return ErrorDataSource.cacheError.getFailure();

    // ignore: no_default_cases
    default:
      return ErrorDataSource.defaultSource.getFailure();
  }
}
