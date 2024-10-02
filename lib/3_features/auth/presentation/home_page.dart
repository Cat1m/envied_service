import 'package:envied_service/3_features/auth/data/repositories/auth_repository.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => _logout(context),
          ),
        ],
      ),
      body: const Center(
        child: Text('Welcome to the Home Page!'),
      ),
    );
  }

  void _logout(BuildContext context) async {
    final authRepository = AuthRepository();
    await authRepository.logout();
    Navigator.of(context).pushReplacementNamed('/login');
  }
}
