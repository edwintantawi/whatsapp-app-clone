import 'package:flutter/material.dart';

class InkIconButton extends StatelessWidget {
  final Function() onTap;
  final IconData icon;

  const InkIconButton({
    Key? key,
    required this.onTap,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        borderRadius: BorderRadius.circular(100),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Icon(icon),
        ),
        onTap: onTap,
      ),
    );
  }
}
