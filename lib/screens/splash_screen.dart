import 'package:flutter/material.dart';
import 'package:invest_app/screens/signup_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void switchToSignupScreen() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SignupScreen()));
  }

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), switchToSignupScreen);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/Investlogo.png',
          width: 139,
          height: 192,
        ),
      ),
    );
  }
}
