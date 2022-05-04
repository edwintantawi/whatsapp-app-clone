import 'package:flutter/material.dart';

class ChatAppBarLeading extends StatelessWidget {
  final ImageProvider<Object>? foregroundImage;
  const ChatAppBarLeading({
    Key? key,
    this.foregroundImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shadowColor: Colors.transparent,
          padding: const EdgeInsets.all(4),
          shape: const StadiumBorder(),
        ),
        child: Row(
          children: [
            const Icon(Icons.arrow_back),
            CircleAvatar(
              foregroundImage: foregroundImage,
              backgroundColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
