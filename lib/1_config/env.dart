import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env', obfuscate: true)
abstract class Env {
  @EnviedField(varName: 'API_URL')
  static String apiUrl = _Env.apiUrl;

  @EnviedField(varName: 'API_KEY', obfuscate: true)
  static final String apiKey = _Env.apiKey;

  @EnviedField(varName: 'DEBUG_MODE')
  static bool debugMode = _Env.debugMode;

  @EnviedField(varName: 'LOGIN_USERNAME', obfuscate: true)
  static final String loginUsername = _Env.loginUsername;

  @EnviedField(varName: 'LOGIN_PASSWORD', obfuscate: true)
  static final String loginPassword = _Env.loginPassword;
}
