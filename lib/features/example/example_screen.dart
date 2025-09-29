import 'package:flutter/material.dart';
import 'package:flutter_starter_screens/features/auth/login_screen.dart';
import 'package:flutter_starter_screens/features/auth/otp_screen.dart';
import 'package:flutter_starter_screens/features/auth/pin_screen.dart';
import 'package:flutter_starter_screens/features/auth/register_screen.dart';
import 'package:flutter_starter_screens/features/consent/consent_screen.dart';
import 'package:flutter_starter_screens/features/home/home_screen.dart';
import 'package:flutter_starter_screens/features/setting/setting_screen.dart';
import 'package:flutter_starter_screens/features/splash/splash_screen.dart';

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example Screen'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SplashScreen()),
                    );
                  },
                  child: const Text('Splash Screen')),
              FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                  child: const Text('Login Screen')),
              FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterScreen()),
                    );
                  },
                  child: const Text('Register Screen')),
              FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OtpScreen()),
                    );
                  },
                  child: const Text('OTP Screen')),
              FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PinScreen()),
                    );
                  },
                  child: const Text('PIN Screen')),
              FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ConsentScreen()),
                    );
                  },
                  child: const Text('Consent Screen')),
              FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                  },
                  child: const Text('Home Screen')),
              FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SettingScreen()),
                    );
                  },
                  child: const Text('Setting Screen')),
            ],
          ),
        ),
      ),
    );
  }
}
