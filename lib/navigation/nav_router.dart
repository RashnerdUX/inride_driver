import 'package:go_router/go_router.dart';
import 'package:inride_driver/screens/home_screen.dart';
import 'package:inride_driver/screens/screens_barrel.dart';
import 'nav_routes.dart';
import 'user_auth.dart';

GoRouter appRouter = GoRouter(
  routes: routes,
  redirect: (context, state) {
    if (UserAuth.isLoggedIn) {
      context.goNamed(HomeScreen.routeName);
    } else {
      context.goNamed(SigninScreen.routeName);
    }
  },
  initialLocation: "/",
);
