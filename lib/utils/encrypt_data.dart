import 'package:encrypt/encrypt.dart';
import '../config/app_config.dart';

class EncryptData {
  static final config = EnvironmentConfig();

  // AES key and IV
  static final key = Key.fromBase64(config.encryptionKey ?? '');
  static final iv = IV.fromBase64(config.encryptionIV ?? '');

  // AES encryption method
  static String encryptAES(String plainText) {
    final encrypter = Encrypter(
      AES(key, mode: AESMode.cbc),
    );
    final encrypted = encrypter.encrypt(plainText, iv: iv);
    return encrypted.base64;
  }

  // AES decryption method
  static String decryptAES(String encryptedText) {
    final encrypter = Encrypter(
      AES(key, mode: AESMode.cbc),
    );
    final decrypted = encrypter.decrypt64(encryptedText, iv: iv);
    return decrypted;
  }
}
