import 'package:flutter/material.dart';

import 'package:whatsapp_app_clone/components/ink_icon_button.dart';
import 'package:whatsapp_app_clone/components/input_text.dart';
import 'package:whatsapp_app_clone/utils/colors.dart';

class ChatInputBar extends StatefulWidget {
  const ChatInputBar({Key? key}) : super(key: key);

  @override
  State<ChatInputBar> createState() => _ChatInputBarState();
}

class _ChatInputBarState extends State<ChatInputBar> {
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: WAColors.chatBackground,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  InkIconButton(
                    icon: Icons.emoji_emotions_outlined,
                    iconColor: Colors.grey,
                    onTap: () {},
                  ),
                  Expanded(
                    child: InputText(
                      maxLines: 6,
                      minLines: 1,
                      hintText: 'Message',
                      controller: _messageController,
                    ),
                  ),
                  InkIconButton(
                    icon: Icons.link,
                    iconColor: Colors.grey,
                    onTap: () {},
                  ),
                  InkIconButton(
                    icon: Icons.camera_alt_rounded,
                    iconColor: Colors.grey,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 8),
          InkIconButton(
            icon: Icons.send,
            iconColor: Colors.white,
            backgroundColor: WAColors.lightTealGreen,
            splashRadius: 24,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
