import 'package:envied_service/1_config/app_config.dart';
import 'package:envied_service/1_config/env.dart';
import 'package:envied_service/2_core/services/secure_storage_service.dart';
import 'package:envied_service/app.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await AppConfig().initialize();

  await SecureStorageService().writeSecureData('API_KEY', Env.apiKey);

  runApp(const MyApp());
}
