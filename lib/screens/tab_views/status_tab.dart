import 'package:flutter/material.dart';

class StatusTab extends StatelessWidget {
  const StatusTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.edit,
      size: 50,
      color: Colors.grey[200],
    );
  }
}
