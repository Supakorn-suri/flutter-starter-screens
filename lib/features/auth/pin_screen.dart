import 'package:flutter/material.dart';

class PinScreen extends StatelessWidget {
  const PinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "PIN",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      )),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Flexible(
                  flex: 2,
                  child: Text("Enter PIN code",
                      style: TextStyle(
                          color: Color(0xFF8532FF),
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 24),
                Flexible(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        6, (index) => const Pin(input: false)),
                  ),
                ),
              ],
            ),
            Expanded(flex: 1, child: _NumPad()),
            const InkWell(
              child: Text(
                'Forgot PIN',
                style: TextStyle(
                  shadows: [
                    Shadow(color: Color(0xFF8532FF), offset: Offset(0, -2))
                  ],
                  color: Colors.transparent,
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xFF8532FF),
                  fontSize: 14,
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

class _NumPad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Row(
              children: [
                Expanded(
                  child: NumPadButton(
                    num: "1",
                    onPressed: () => {},
                  ),
                ),
                Expanded(
                  child: NumPadButton(num: "2", onPressed: () => {}),
                ),
                Expanded(
                  child: NumPadButton(num: "3", onPressed: () => {}),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Flexible(
            child: Row(
              children: [
                Expanded(
                  child: NumPadButton(num: "4", onPressed: () => {}),
                ),
                Expanded(
                  child: NumPadButton(num: "5", onPressed: () => {}),
                ),
                Expanded(
                  child: NumPadButton(num: "6", onPressed: () => {}),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Flexible(
            child: Row(
              children: [
                Expanded(
                  child: NumPadButton(num: "7", onPressed: () => {}),
                ),
                Expanded(
                  child: NumPadButton(num: "8", onPressed: () => {}),
                ),
                Expanded(
                  child: NumPadButton(num: "9", onPressed: () => {}),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Flexible(
            child: Row(
              children: [
                const Expanded(
                  child: SizedBox(),
                ),
                Expanded(
                  child: NumPadButton(num: "0", onPressed: () => {}),
                ),
                Expanded(
                  child: IconButton(
                    iconSize: 24,
                    icon: const Icon(
                      Icons.backspace_outlined,
                    ),
                    onPressed: () => {},
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Pin extends StatelessWidget {
  final bool input;

  const Pin({Key? key, required this.input}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: 16,
      height: 16,
      decoration: BoxDecoration(
        color: input ? const Color(0xFF8532FF) : const Color(0xFFE6E6E6),
        shape: BoxShape.circle,
      ),
    );
  }
}

class NumPadButton extends StatelessWidget {
  const NumPadButton({Key? key, required this.num, this.onPressed})
      : super(key: key);

  final String num;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: 56,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(10),
          side: const BorderSide(width: 1, color: Color(0xFFCCCCCC)),
          shape: const CircleBorder(),
        ),
        child: Text(num,
            style: const TextStyle(
                color: Color(0xFF333333),
                fontSize: 14,
                fontWeight: FontWeight.w600)),
      ),
    );
  }
}
