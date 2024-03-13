import 'package:flutter/material.dart';
import 'package:miniproject_gpay_clone/core/constants/image_constants.dart';
import 'package:miniproject_gpay_clone/view/login_page/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          ImageConstants.appIconPng,
          scale: 3.0,
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
        child: Image.asset(ImageConstants.googlepng),
      ),
    );
  }
}
