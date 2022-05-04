import 'package:flutter/material.dart';

import 'package:whatsapp_app_clone/components/ink_icon_button.dart';
import 'package:whatsapp_app_clone/screens/verify_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter your phone number'),
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
                  const Text(
                    'WhatsApp will need to verify your phone number.',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'What\'s my number?',
                    style: TextStyle(color: Colors.blue),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: 240,
                    child: TextField(
                      controller: _phoneNumberController,
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 10),
                        hintText: '+62 932-238X-XXXX',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            const Expanded(flex: 1, child: SizedBox()),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(80, 44),
              ),
              onPressed: () {
                // TODO: do authentication

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => VerifyScreen(
                      phoneNumber: _phoneNumberController.text,
                    ),
                  ),
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
