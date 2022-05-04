import 'package:flutter/material.dart';

class InkIconButton extends StatelessWidget {
  final Function() onTap;
  final IconData icon;
  final Color? iconColor;
  final Color? backgroundColor;
  final double? splashRadius;

  const InkIconButton(
      {Key? key,
      required this.onTap,
      required this.icon,
      this.iconColor,
      this.backgroundColor,
      this.splashRadius = 20})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Ink(
        decoration: ShapeDecoration(
          color: backgroundColor,
          shape: const CircleBorder(),
        ),
        child: IconButton(
          splashRadius: splashRadius,
          onPressed: onTap,
          icon: Icon(icon, color: iconColor),
        ),
      ),
    );
  }
}

// Ink(
  // decoration: ShapeDecoration(
  //   color: WAColors.lightTealGreen,
  //   shape: const CircleBorder(),
  // ),
//   child: IconButton(
//     color: Colors.white,
//     splashRadius: 24,
//     onPressed: () {},
//     icon: const Icon(Icons.send),
//   ),
// ),
