import 'package:envied_service/1_config/app_config.dart';
import 'package:envied_service/1_config/env.dart';
import 'package:envied_service/2_core/services/secure_storage_service.dart';
import 'package:envied_service/2_core/utils/app_logger.dart';

class AuthRepository {
  final SecureStorageService _secureStorage = SecureStorageService();

  Future<bool> login(String username, String password) async {
    try {
      final apiUrl = AppConfig().apiUrl;
      final apiKey = await _secureStorage.readSecureData('API_KEY');

      AppLogger.i('Attempting login for user: $username');
      AppLogger.d('Using API URL: $apiUrl');
      AppLogger.d('Using API Key: $apiKey');

      // Simulating API call
      await Future.delayed(const Duration(seconds: 2));

      // Check credentials against environment variables
      final success =
          username == Env.loginUsername && password == Env.loginPassword;

      if (success) {
        await _secureStorage.writeSecureData(
            'USER_TOKEN', 'sample_token_$username');
        AppLogger.i('Login successful for user: $username');
      } else {
        AppLogger.w('Login failed for user: $username');
      }

      return success;
    } catch (e) {
      AppLogger.e('Error during login: $e');
      return false;
    }
  }

  Future<void> logout() async {
    await _secureStorage.deleteSecureData('USER_TOKEN');
    AppLogger.i('User logged out');
  }
}
