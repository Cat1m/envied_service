import 'package:envied_service/1_config/app_config.dart';
import 'package:envied_service/2_core/services/secure_storage_service.dart';
import 'package:envied_service/2_core/utils/app_logger.dart';

class AuthRepository {
  final SecureStorageService _secureStorageService = SecureStorageService();

  Future<bool> login(String username, String password) async {
    try {
      final apiUrl = AppConfig().apiUrl;
      final apiKey = await _secureStorageService.readSecureData('API_KEY');

      AppLogger.i('Attempting login for user: $username');
      AppLogger.d('Using API URL: $apiUrl');

      // Simulating API call
      await Future.delayed(const Duration(seconds: 2));

      // In a real app, you would make an API call here and validate the response
      // For this example, we'll just return true if the username is not empty
      final success = username.isNotEmpty;

      if (success) {
        await _secureStorageService.writeSecureData(
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
    await _secureStorageService.deleteSecureData('USER_TOKEN');
    AppLogger.i('User logged out');
  }
}
