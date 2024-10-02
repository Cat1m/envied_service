import 'package:envied_service/1_config/app_config.dart';
import 'package:logger/logger.dart';

class AppLogger {
  static final Logger _appLogger = Logger(
    printer: PrettyPrinter(),
    level: AppConfig().debugMode ? Level.trace : Level.off,
  );

  static void d(dynamic message) {
    _appLogger.d(message);
  }

  static void i(dynamic message) {
    _appLogger.i(message);
  }

  static void w(dynamic message) {
    _appLogger.w(message);
  }

  static void e(dynamic message) {
    _appLogger.e(message);
  }
}
