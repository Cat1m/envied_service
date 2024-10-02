import 'package:envied_service/1_config/app_config.dart';
import 'package:envied_service/3_features/auth/presentation/home_page.dart';
import 'package:envied_service/3_features/auth/presentation/login_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// dart run build_runner clean
// dart run build_runner build --delete-conflicting-outputs

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Secure App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
      },
      debugShowCheckedModeBanner: AppConfig().debugMode,
    );
  }
}
