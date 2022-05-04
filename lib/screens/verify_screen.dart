import 'package:flutter/material.dart';

import 'package:whatsapp_app_clone/components/ink_icon_button.dart';
import 'package:whatsapp_app_clone/screens/home_screen.dart';

class VerifyScreen extends StatefulWidget {
  final String phoneNumber;

  const VerifyScreen({
    Key? key,
    required this.phoneNumber,
  }) : super(key: key);

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  final TextEditingController _verifyCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verifying your number'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        actions: [InkIconButton(onTap: () {}, icon: Icons.more_vert)],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Waiting to automatically detect an SMS sent to ',
                      style: const TextStyle(color: Colors.black, height: 1.5),
                      children: [
                        TextSpan(
                          text: widget.phoneNumber,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const TextSpan(text: '. '),
                        const TextSpan(
                          text: 'Wrong number?',
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: 150,
                    child: TextField(
                      controller: _verifyCodeController,
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 8),
                        hintText: '- - -   - - -',
                        hintStyle: TextStyle(fontSize: 30, color: Colors.grey),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 18),
                  const Text(
                    'Enter SMS code',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ),
            const Expanded(flex: 1, child: SizedBox()),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(80, 44),
              ),
              onPressed: () {
                // TODO: do verify SMS code

                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                  (route) => false,
                );
              },
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
