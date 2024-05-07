part of './error_handler.dart';

enum ErrorDataSource {
  success,
  noContent,
  badRequest,
  forbidden,
  unauthorized,
  notFound,
  internalServerError,
  connectTimeout,
  cancel,
  receiveTimeout,
  sendTimeout,
  cacheError,
  noInternetConnection,
  defaultSource,
}

extension DataSourceExtension on ErrorDataSource {
  Failure getFailure() => DataSourceExtension.toFailure(this);

  static const Map<ErrorDataSource, String> authorizedMessages = {
    ErrorDataSource.success: 'Success',
    ErrorDataSource.noContent: 'Success with not content',
    ErrorDataSource.badRequest: 'Bad request. try again later',
    ErrorDataSource.unauthorized: 'User unauthorized, try again later',
    ErrorDataSource.forbidden: 'Forbidden request. try again later',
    ErrorDataSource.internalServerError: 'Some thing went wrong, try again later',
    ErrorDataSource.notFound: 'Url not found, try again later',
    ErrorDataSource.connectTimeout: 'Time out, try again late',
    ErrorDataSource.cancel: 'Some thing went wrong, try again later',
    ErrorDataSource.receiveTimeout: 'Time out, try again late',
    ErrorDataSource.sendTimeout: 'Time out, try again late',
    ErrorDataSource.cacheError: 'Cache error, try again later',
    ErrorDataSource.noInternetConnection: 'Please check your internet connection',
    ErrorDataSource.defaultSource: 'Some thing went wrong, try again later',
  };

  static Failure toFailure(ErrorDataSource dataSource) {
    final messages = authorizedMessages[dataSource] ?? '';
    return Failure(
      ResponseCode.getResponseCode(dataSource),
      messages,
    );
  }
}
