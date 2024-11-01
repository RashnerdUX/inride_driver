import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:inride_driver/navigation/nav_barrel.dart';
import 'package:inride_driver/theme/theme_barrel.dart';
import 'package:inride_driver/models/models_barrel.dart';
import 'screens/screens_barrel.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(routes: routes, initialLocation: "/");

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: SettingsModel(),
      builder: (context, child) => ScreenUtilInit(
        designSize: const Size(932, 430),
        minTextAdapt: true,
        builder: (context, child) => MaterialApp.router(
          routerConfig: appRouter,
          debugShowCheckedModeBanner: false,
          // localizationsDelegates: [
          //   GlobalMaterialLocalizations.delegate,
          // ],
          supportedLocales: const [
            Locale('en', 'GB'),
          ],
          title: 'InRide',
          theme: AppTheme.themeData,
          //darkTheme: AppTheme.darkThemeData,
          themeMode: ThemeMode.system,
          // home: const EarningsScreen(),
        ),
      ),
    );
  }
}
