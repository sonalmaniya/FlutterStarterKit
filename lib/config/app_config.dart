import 'package:flutter_dotenv/flutter_dotenv.dart';

enum AppEnvironment {
  development,
  production,
  test,
}

const currentEnvironment = AppEnvironment.production;

class EnvironmentConfig {
  final baseUrl = dotenv.env['BASE_URL'];
  final apiKey = dotenv.env['API_KEY'];
  final encryptionKey = dotenv.env['ENCRYPTION_KEY'];
  final encryptionIV = dotenv.env['ENCRYPTION_IV'];
}
