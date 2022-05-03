import 'package:flutter/material.dart';

class CallsTab extends StatelessWidget {
  const CallsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.add_call,
      size: 50,
      color: Colors.grey[200],
    );
  }
}
