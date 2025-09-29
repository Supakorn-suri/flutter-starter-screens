import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "Profile",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'First name',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                onChanged: (value) {},
              ),
              const SizedBox(height: 16),
              const Text(
                'Last name',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                onChanged: (value) {},
              ),
              const SizedBox(height: 16),
              const Text(
                'Brith Date',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              TextFormField(
                onChanged: (value) {},
                decoration: const InputDecoration(
                  suffixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(Icons.calendar_month)),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Gender',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              TextFormField(
                onChanged: (value) {},
              ),
              const SizedBox(height: 16),
              const Text(
                'Mobile Number',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              TextFormField(
                onChanged: (value) {},
              ),
              const SizedBox(height: 16),
              const Text(
                'Email',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              TextFormField(
                onChanged: (value) {},
              ),
              const SizedBox(height: 16),
              const Text(
                'Password',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              TextFormField(
                onChanged: (value) {},
              ),
              const SizedBox(height: 16),
              const Text(
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
          child: const Text(
            'Next',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
