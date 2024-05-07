import '../config/app_config.dart';

class Endpoints {
  Endpoints._();
  static final config = EnvironmentConfig();

  // base url
  static final String baseUrl = config.baseUrl ?? '';

  // receiveTimeout
  static const Duration receiveTimeout = Duration(milliseconds: 15000);

  // connectTimeout
  static const Duration connectionTimeout = Duration(milliseconds: 15000);

  // News List
  static const String newsList = '/posts';
}
