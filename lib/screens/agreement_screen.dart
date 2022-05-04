import 'package:flutter/material.dart';

class AgreementScreen extends StatelessWidget {
  const AgreementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 82),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Welcome to WhatsApp',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Image.asset(
                  'assets/pattern.png',
                  width: 250,
                  height: 250,
                ),
                Column(
                  children: [
                    const Text(
                      'This application is only a clone of the WhatsApp application, there is no malicious intent. Only as a learning purpose.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(300, 44),
                      ),
                      child: const Text('AGREE AND CONTINUE'),
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
