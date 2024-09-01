// lib/src/providers/auth_provider.dart
import 'package:flutter/material.dart';
import 'package:allison_app/src/services/auth_service.dart';

class AuthProvider with ChangeNotifier {
  final AuthService _authService = AuthService();
  bool _isLoggedIn = false;
  String? _errorMessage;

  bool get isLoggedIn => _isLoggedIn;
  String? get errorMessage => _errorMessage;

  Future<void> login(BuildContext context, String email, String password) async {
    final success = await _authService.login(email, password);
    if (success) {
      _isLoggedIn = true;
      _errorMessage = null;
      // Navegar a la pantalla principal
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      _isLoggedIn = false;
      _errorMessage = 'Credenciales incorrectas';
    }
    notifyListeners();
  }
}
