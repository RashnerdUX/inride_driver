import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:inride_driver/models/auth_service.dart';

//This repo stores the user's details for the app
//Avoid for now, don't fully understand the logic yet
class AuthRepository {
  final AuthService _authService;

  AuthRepository(this._authService);

  Future<String> login(String email, String password) {
    return _authService.logIn(email, password);
  }
}

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(ref.read(authServiceProvider));
});
