import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inride_driver/constants.dart';
import 'nav_routes.dart';
import 'user_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final routerProvider = Provider<GoRouter>((ref) {
  //This is the provider that will manage the state of the GoRouter
  final routerListenable = RouterNotifier(ref);

  return GoRouter(
    navigatorKey: kGlobalNavKey,
    debugLogDiagnostics: true,
    refreshListenable: routerListenable,
    redirect: (context, state) => routerListenable._redirectLogic(state),
    routes: routes,
    // redirect: (context, state) {
    //   if (UserAuth.isLoggedIn) {
    //     context.goNamed(HomeScreen.routeName);
    //   } else {
    //     context.goNamed(SigninScreen.routeName);
    //   }
    // },
    initialLocation: "/signin",
  );
});

class RouterNotifier extends ChangeNotifier {
  final Ref _ref;

  RouterNotifier(this._ref) {
    _ref.listen(loginControllerProvider, (_, __) => notifyListeners());
  }

  String? mockRedirectLogic(GoRouterState state, bool isLoggedIn) {
    final currentPath = state.path;
    if (isLoggedIn) return "/home";
    if (!isLoggedIn) return '/signin';

    return null;
  }

  String? _redirectLogic(GoRouterState state) {
    final LoginState = _ref.read(loginControllerProvider);

    final areWeLoggingIn = state.path == "/signin";

    if (LoginState is LoginStateInitial) {
      return areWeLoggingIn ? null : '/signin';
    }

    if (areWeLoggingIn) return '/';

    return null;
  }

  List<GoRoute> get _routes => routes;
}

//Everything after this is mock
GoRouter appRouter = GoRouter(
  navigatorKey: kGlobalNavKey,
  debugLogDiagnostics: true,
  routes: routes,
  // redirect: (context, state) async {
  //   await Future.delayed(const Duration(milliseconds: 5000));
  //   if (UserAuth.isLoggedIn) {
  //     return '/home';
  //   } else {
  //     return "/signup";
  //   }
  // }, //Have to keep this on the downlow
  initialLocation: "/",
);
