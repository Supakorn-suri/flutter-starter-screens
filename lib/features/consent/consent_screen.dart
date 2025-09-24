import 'package:flutter/material.dart';

class ConsentScreen extends StatelessWidget {
  const ConsentScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Terms of Service")),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                  'The Application Usage Policy (Mock Version), last updated on 23/11/24, outlines the rules and guidelines for using the [Your App Name] application (“the App”) to ensure all users enjoy a safe, reliable, and secure experience; users must use the App only for lawful purposes and avoid misuse that could harm its performance, security, or other users, while sharing false, harmful, or illegal content is strictly prohibited; users are responsible for maintaining the confidentiality of their account information, should note that the App team will never request passwords through email or unofficial channels, and must report any unauthorized use immediately; the App may collect basic user information such as name, email, and usage data to improve services, but personal data will not be sold or shared with third parties without consent, with further details available in the Privacy Policy; users are restricted from reverse engineering, copying, or distributing the App without permission, using the App to send spam, harassment, or harmful content, or violating intellectual property rights; and for any questions about this policy, users may contact [support@example.com].'),
              ListTileTheme(
                horizontalTitleGap: 0,
                child: CheckboxListTile(
                    visualDensity: VisualDensity.compact,
                    splashRadius: 18,
                    side: const BorderSide(width: 1, color: Color(0xFFD9D9D9)),
                    activeColor: Color(0xFF8532FF),
                    contentPadding: EdgeInsets.zero,
                    title: const Text(
                      'Accept the terms of service',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    value: true,
                    onChanged: (value) {},
                    controlAffinity: ListTileControlAffinity.leading),
              ),
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
