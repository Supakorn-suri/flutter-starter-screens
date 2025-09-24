import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Register Screen")),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'First name',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              TextFormField(
                onChanged: (value) {},
              ),
              const SizedBox(height: 16),
              Text(
                'Last name',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              TextFormField(
                onChanged: (value) {},
              ),
              const SizedBox(height: 16),
              Text(
                'Brith Date',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              TextFormField(
                onChanged: (value) {},
              ),
              const SizedBox(height: 16),
              Text(
                'Gender',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              TextFormField(
                onChanged: (value) {},
              ),
              const SizedBox(height: 16),
              Text(
                'Mobile Number',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              TextFormField(
                onChanged: (value) {},
              ),
              const SizedBox(height: 16),
              Text(
                'Email',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              TextFormField(
                onChanged: (value) {},
              ),
              const SizedBox(height: 16),
              Text(
                'Password',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              TextFormField(
                onChanged: (value) {},
              ),
              const SizedBox(height: 16),
              Text(
                'Confirm Password',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              TextFormField(
                onChanged: (value) {},
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: Colors.transparent,
        padding: const EdgeInsets.all(16),
        color: Colors.white,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            backgroundColor: Theme.of(context).primaryColor,
          ),
          child: Text(
            'Next',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
