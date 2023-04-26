import 'pages/forgotPassword.dart';
import 'pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'pages/dashboard.dart';
import 'pages/login.dart';
import 'pages/register.dart';

void main() async {
  // Initialize Hive
  // WidgetsFlutterBinding.ensureInitialized();
  // await Hive.initFlutter();
  // await Hive.openBox('dataBox');

  // Open boxes, register adapters, and do other setup work here

  // Run app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Air Quality Monitoring',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/dashboard': (context) => DashboardPage(),
        '/forgot_password': (context) => ForgotPassword(),
        // '/co_chart': (context) => CoChartPage(coData: coData),
      },
    );
  }
}
