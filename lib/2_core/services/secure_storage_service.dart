import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  static final SecureStorageService _instance =
      SecureStorageService._internal();

  factory SecureStorageService() => _instance;

  SecureStorageService._internal();

  final _storage = const FlutterSecureStorage();

  //viết
  Future<void> writeSecureData(
    String key,
    String value,
  ) async {
    await _storage.write(key: key, value: value);
  }

  //đọc
  Future<String?> readSecureData(String key) async {
    return await _storage.read(key: key);
  }

  //xóa
  Future<void> deleteSecureData(
    String key,
  ) async {
    await _storage.delete(key: key);
  }
}
