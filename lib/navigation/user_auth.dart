//For sample purposes, this is the simple bool that says when the user is logged in

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:equatable/equatable.dart';
import 'package:inride_driver/repository/auth_repository.dart';

class UserAuth {
  static bool isLoggedIn = false;
  static bool isUserregistering = true;
  static bool isOTPcorrect = true;
  static bool isLocationEnabled = false;
  static bool isGalleryPermissionGiven = false;
}

class LoginController extends StateNotifier<LoginState> {
  LoginController(this.ref) : super(const LoginStateInitial());

  final Ref ref;

  void login(String email, String password) async {
    state = const LoginStateLoading();
    try {
      await ref.read(authRepositoryProvider).login(email, password);
      state = const LoginStateSuccess();
    } catch (e) {
      state = LoginStateError(e.toString());
    }
  }
}

final loginControllerProvider =
    StateNotifierProvider<LoginController, LoginState>((ref) {
  return LoginController(ref);
});

class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object?> get props => [];
}

class LoginStateInitial extends LoginState {
  const LoginStateInitial();

  @override
  List<Object?> get props => [];
}

class LoginStateLoading extends LoginState {
  const LoginStateLoading();

  @override
  List<Object?> get props => [];
}

class LoginStateSuccess extends LoginState {
  const LoginStateSuccess();

  @override
  List<Object?> get props => [];
}

class LoginStateError extends LoginState {
  const LoginStateError(this.error);

  final String error;

  @override
  List<Object?> get props => [];
}
