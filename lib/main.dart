import 'package:flutter/material.dart';
import 'package:template_project/screens/dashboard_screen.dart';
import 'package:template_project/screens/message_screen.dart';
import 'package:template_project/screens/signup_screen.dart';
import 'package:template_project/screens/welcome_screen.dart';
import 'package:template_project/screens/signin_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UAS Aisya Dwi Anggita',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/dashboard': (context) => DashboardScreen(),
        '/signup': (context) => SignUpScreen(),
        '/signin': (context) => SignInScreen(),
        '/message':(context) => MessageScreen(),
        
        
      },
    );
  }
}