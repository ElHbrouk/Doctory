import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        
        title: const Text('Login View'),
      ),
      body: Center(
        child: Text('Login View'),
      ),
    );
  }
}
