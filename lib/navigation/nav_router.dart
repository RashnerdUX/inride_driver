import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'nav_routes.dart';

class AppRouter {
  GoRouter appRouter = GoRouter(routes: routes, redirect: (context, state) {});
}
