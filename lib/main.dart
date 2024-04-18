import 'package:diet/services/device_service.dart';
import 'package:diet/services/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await DeviceService().initPlatformState();
  // только книжная ориентация
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Обзор',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color.fromRGBO(232, 232, 232, 1),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(232, 232, 232, 1),
        ),
        navigationBarTheme: const NavigationBarThemeData(
          backgroundColor: Colors.white,
          shadowColor: Colors.white,
          surfaceTintColor: Colors.white,
        ),
      ),
      routerConfig: _router.config(),
    );
  }
}
