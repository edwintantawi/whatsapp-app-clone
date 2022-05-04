import 'package:flutter/material.dart';

import 'package:whatsapp_app_clone/components/triangle_shape.dart';
import 'package:whatsapp_app_clone/utils/colors.dart';

class ChatBubble extends StatelessWidget {
  final bool fromMe;
  final String message;
  final String phoneNumber;
  final DateTime time;

  const ChatBubble({
    Key? key,
    required this.fromMe,
    required this.message,
    required this.phoneNumber,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = fromMe ? WAColors.outGoingChatBubble : Colors.white;

    TriangleShape triangleShapePainter = TriangleShape(backgroundColor: color);

    return Row(
      mainAxisAlignment:
          fromMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        !fromMe
            ? Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationY(3.14),
                child: CustomPaint(painter: triangleShapePainter),
              )
            : const SizedBox.shrink(),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 12,
                bottom: 28,
                right: 12,
                left: 12,
              ),
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width / 1.4,
                minWidth: 50,
              ),
              margin: const EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  !fromMe
                      ? Container(
                          margin: const EdgeInsets.only(bottom: 4),
                          child: Text(
                            phoneNumber,
                            style: const TextStyle(
                                color: Colors.blue, fontSize: 14),
                          ),
                        )
                      : const SizedBox.shrink(),
                  Text(
                    message,
                    style: const TextStyle(height: 1.5),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 12,
              bottom: 21,
              child: Text(
                '${time.hour.toString()}:${time.minute.toString()}',
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
          ],
        ),
        fromMe
            ? CustomPaint(painter: triangleShapePainter)
            : const SizedBox.shrink()
      ],
    );
  }
}
