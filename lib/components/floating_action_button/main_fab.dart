import 'package:flutter/material.dart';

class MainFloatingActionButton extends StatelessWidget {
  final Function() onPressed;
  final IconData icon;
  final bool mini;

  const MainFloatingActionButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    this.mini = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      mini: mini,
      backgroundColor: mini ? Colors.grey[200] : null,
      onPressed: onPressed,
      foregroundColor: !mini ? Colors.white : null,
      child: Icon(icon, size: 20.0),
    );
  }
}
