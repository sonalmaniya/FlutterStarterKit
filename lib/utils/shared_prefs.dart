import 'dart:async' show Future;

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesUtil {
  factory SharedPreferencesUtil() => _instance;

  SharedPreferencesUtil._privateConstructor();
  late SharedPreferences _prefsInstance;
  bool _initCalled = false;

  static final SharedPreferencesUtil _instance = SharedPreferencesUtil._privateConstructor();

  Future<void> init() async {
    if (!_initCalled) {
      _prefsInstance = await SharedPreferences.getInstance();
      _initCalled = true;
    }
  }

  void dispose() {
    // No need to nullify _prefsInstance here
  }

  void isPreferenceReady() {
    assert(
      _initCalled,
      'Prefs.init() must be called first in an initState() preferably!',
    );
  }

  Set<String> getKeys() {
    isPreferenceReady();
    return _prefsInstance.getKeys();
  }

  Future<Set<String>> getKeysF() async {
    await init();
    return _prefsInstance.getKeys();
  }

  dynamic getDynamic(String key) {
    isPreferenceReady();
    return _prefsInstance.get(key);
  }

  Future<dynamic> getDynamicF(String key) async {
    await init();
    return _prefsInstance.get(key);
  }

  bool getBool(String key) {
    isPreferenceReady();
    return _prefsInstance.getBool(key) ?? false;
  }

  Future<bool> getBoolF(String key) async {
    await init();
    return _prefsInstance.getBool(key) ?? false;
  }

  int? getInt(String key, [int? defValue]) {
    isPreferenceReady();
    return _prefsInstance.getInt(key) ?? defValue;
  }

  // Returns a Future
  Future<int> getIntF(String key, [int? defValue]) async {
    await init();
    return _prefsInstance.getInt(key) ?? defValue ?? 0;
  }

  double getDouble(String key, [double? defValue]) {
    isPreferenceReady();
    return _prefsInstance.getDouble(key) ?? defValue ?? 0.0;
  }

// Returns a Future.
  Future<double> getDoubleF(String key, [double? defValue]) async {
    await init();
    return _prefsInstance.getDouble(key) ?? defValue ?? 0.0;
  }

  String getString(String key, [String? defValue]) {
    isPreferenceReady();
    return _prefsInstance.getString(key) ?? defValue ?? '';
  }

  // Returns a Future.
  Future<String> getStringF(String key, [String? defValue]) async {
    await init();
    return _prefsInstance.getString(key) ?? defValue ?? '';
  }

  List<String> getStringList(String key, [List<String>? defValue]) {
    isPreferenceReady();
    return _prefsInstance.getStringList(key) ?? defValue ?? [''];
  }

  // Returns a Future.
  Future<List<String>> getStringListF(
    String key, [
    List<String>? defValue,
  ]) async {
    await init();
    return _prefsInstance.getStringList(key) ?? defValue ?? [''];
  }

  Future<bool> setBool(String key, {required bool value}) async {
    await init();
    return _prefsInstance.setBool(key, value);
  }

  Future<bool> setInt(String key, int value) async {
    await init();
    return _prefsInstance.setInt(key, value);
  }

  Future<bool> setDouble(String key, double value) async {
    await init();
    return _prefsInstance.setDouble(key, value);
  }

  Future<bool> setString(String key, String value) async {
    await init();
    return _prefsInstance.setString(key, value);
  }

  Future<bool> setStringList(String key, List<String> value) async {
    await init();
    return _prefsInstance.setStringList(key, value);
  }

  Future<bool> remove(String key) async {
    await init();
    return _prefsInstance.remove(key);
  }

  Future<bool> clear() async {
    await init();
    return _prefsInstance.clear();
  }
}
