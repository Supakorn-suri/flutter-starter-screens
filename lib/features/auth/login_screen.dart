import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFF9954FF),
                Color(0xFF8532FF),
                Color(0xFF5D1FB6),
              ],
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Card(
                elevation: 0,
                margin: const EdgeInsets.all(24),
                color: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Image(
                          image: AssetImage('assets/images/logo.png'),
                          height: 60,
                        ),
                        const Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 6),
                        TextFormField(
                          onChanged: (value) {},
                        ),
                        const Text(
                          'Password',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 6),
                        TextFormField(
                          onChanged: (value) {},
                        ),
                        TextButton(
                            onPressed: () {}, child: const Text('Login')),
                        OutlinedButton(
                            onPressed: () {}, child: const Text('Register')),
                      ]),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
