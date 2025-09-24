import 'package:flutter/material.dart';
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
                          builder: (context) => const EmptyPage()),
                    );
                  },
                  child: const Text('Login Screen')),
              FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EmptyPage()),
                    );
                  },
                  child: const Text('Regiter Screen')),
              FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EmptyPage()),
                    );
                  },
                  child: const Text('Consent Screen')),
              FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EmptyPage()),
                    );
                  },
                  child: const Text('OTP Screen')),
              FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EmptyPage()),
                    );
                  },
                  child: const Text('PIN Screen')),
              FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EmptyPage()),
                    );
                  },
                  child: const Text('Home Screen')),
              FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EmptyPage()),
                    );
                  },
                  child: const Text('Setting Screen')),
              FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EmptyPage()),
                    );
                  },
                  child: const Text('Menu Screen')),
              FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EmptyPage()),
                    );
                  },
                  child: const Text('Detail Screen')),
            ],
          ),
        ),
      ),
    );
  }
}

class EmptyPage extends StatelessWidget {
  const EmptyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Empty Page")),
      body: const Center(
        child: Text("This is an empty page"),
      ),
    );
  }
}
