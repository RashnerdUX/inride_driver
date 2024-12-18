import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthService {
  Future<String> logIn(String email, String password) async {
    return Future.delayed(const Duration(milliseconds: 1000), () {
      return "otp";
    });
  }
}

final authServiceProvider = Provider<AuthService>((ref) => AuthService());
