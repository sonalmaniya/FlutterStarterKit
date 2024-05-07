part of './error_handler.dart';

class ResponseCode {
  static const int success = 200;
  static const int noContent = 201;
  static const int badRequest = 400;
  static const int unauthorized = 401;
  static const int forbidden = 403;
  static const int internalServerError = 500;
  static const int notFound = 404;
  static const int connectTimeout = -1;
  static const int cancel = -2;
  static const int receiveTimeout = -3;
  static const int sendTimeout = -4;
  static const int cacheError = -5;
  static const int noInternetConnection = -6;
  static const int defaultCode = -7;

  static int getResponseCode(ErrorDataSource dataSource) {
    switch (dataSource) {
      case ErrorDataSource.success:
        return success;
      case ErrorDataSource.noContent:
        return noContent;
      case ErrorDataSource.badRequest:
        return badRequest;
      case ErrorDataSource.unauthorized:
        return unauthorized;
      case ErrorDataSource.forbidden:
        return forbidden;
      case ErrorDataSource.internalServerError:
        return internalServerError;
      case ErrorDataSource.notFound:
        return notFound;
      case ErrorDataSource.connectTimeout:
        return connectTimeout;
      case ErrorDataSource.cancel:
        return cancel;
      case ErrorDataSource.receiveTimeout:
        return receiveTimeout;
      case ErrorDataSource.sendTimeout:
        return sendTimeout;
      case ErrorDataSource.cacheError:
        return cacheError;
      case ErrorDataSource.noInternetConnection:
        return noInternetConnection;
      case ErrorDataSource.defaultSource:
        return defaultCode;
    }
  }
}
