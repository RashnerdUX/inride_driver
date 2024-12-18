import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inride_driver/navigation/nav_barrel.dart';
import 'package:inride_driver/theme/theme_barrel.dart';
import 'package:inride_driver/models/models_barrel.dart';
import 'features/features_barrel.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  PermissionService().requestPermissions;

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
