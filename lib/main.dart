import 'package:flutter/material.dart';
import 'package:laurel_beauty/home_screen.dart';
import 'package:laurel_beauty/main-layout.dart';
import 'package:laurel_beauty/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      title: 'Laurel Beauty',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
       colorScheme: .fromSeed(seedColor: Colors.deepPurple),
       useMaterial3: true,
       
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        '/main': (context) => const MainLayout(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}

