import 'package:envied_service/1_config/env.dart';
import 'package:envied_service/2_core/utils/app_logger.dart';

class AppConfig {
  static final AppConfig _instance = AppConfig._internal();

  factory AppConfig() => _instance;

  AppConfig._internal();

  late String apiUrl;
  late bool debugMode;

  Future<void> initialize() async {
    apiUrl = Env.apiUrl;
    debugMode = Env.debugMode;
    AppLogger.i(debugMode);
  }
}
