import 'package:flutter/material.dart';

class PinScreen extends StatelessWidget {
  const PinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("PIN Screen")),
      body: Center(
          child: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            Text('Enter PIN Code'),
            InkWell(
              child: Text(
                'Forgot PIN',
                style: TextStyle(
                  shadows: [Shadow(offset: Offset(0, -2))],
                  color: Colors.transparent,
                  decoration: TextDecoration.underline,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      )),
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
