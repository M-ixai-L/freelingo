import 'dart:developer';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@injectable
class StorageService {
  final _storage = const FlutterSecureStorage();

  Future<String?>? _readKey(String key) async {
    try {
      return await _storage.read(
        key: key,
        iOptions: _getIOSOptions(),
        aOptions: _getAndroidOptions(),
      );
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

  Future<void> _writeKey(String key, String value) async {
    try {
      await _storage.write(
        key: key,
        value: value,
        iOptions: _getIOSOptions(),
        aOptions: _getAndroidOptions(),
      );
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> _deleteKey(String key) async {
    try {
      await _storage.delete(
        key: key,
        iOptions: _getIOSOptions(),
        aOptions: _getAndroidOptions(),
      );
    } catch (e) {
      log(e.toString());
    }
  }

  IOSOptions _getIOSOptions() {
    return const IOSOptions(accountName: 'freelingo');
  }

  AndroidOptions _getAndroidOptions() {
    return const AndroidOptions(encryptedSharedPreferences: true);
  }

  Future<void> flushStorage({bool preserveEnvOptions = true}) async {
    await _storage.deleteAll(
      iOptions: _getIOSOptions(),
      aOptions: _getAndroidOptions(),
    );
  }

  // 'videoPath' key related
  Future<String?>? getVideoPath() {
    return _readKey('videoPath');
  }

  Future<void> saveVideoPath(String videoPath) {
    return _writeKey('videoPath', videoPath);
  }

  Future<void> deleteVideoPath() {
    return _deleteKey('videoPath');
  }
}
