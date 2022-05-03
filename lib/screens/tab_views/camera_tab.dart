import 'package:flutter/material.dart';

class CameraTab extends StatelessWidget {
  const CameraTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.camera_alt_rounded,
      size: 50,
      color: Colors.grey[200],
    );
  }
}
