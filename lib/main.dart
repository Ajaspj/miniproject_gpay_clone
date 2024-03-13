import 'package:flutter/material.dart';
import 'package:miniproject_gpay_clone/view/splash_screen/splash_screen.dart';

void main() {
  runApp(GoogleApp());
}

class GoogleApp extends StatelessWidget {
  const GoogleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
