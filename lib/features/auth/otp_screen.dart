import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "OTP",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      )),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Enter OTP code',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF8532FF),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'We’ve sent an OTP to your number xxx-xxx-1234. Please enter the code below to verify your identity.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 16),
              const Image(
                image: AssetImage('assets/images/otp.png'),
                height: 140,
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(6, (index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                    child: SizedBox(
                      height: 68,
                      width: 40,
                      child: TextField(
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        decoration: InputDecoration(
                          counterText: '',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  );
                }),
              ),
              const SizedBox(height: 8),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Ref : ZZZ',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'The OTP code will expire in 01:30',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF7A7A7A)),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Text(
                          'Resend OTP code',
                          style: TextStyle(
                            shadows: [
                              Shadow(
                                  color: Color(0xFF8532FF),
                                  offset: Offset(0, -2))
                            ],
                            color: Colors.transparent,
                            decoration: TextDecoration.underline,
                            decorationColor: Color(0xFF8532FF),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const TextButton(
                onPressed: null,
                child: Text(
                  'ถัดไป',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
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
