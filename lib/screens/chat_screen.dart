import 'package:flutter/material.dart';

import 'package:whatsapp_app_clone/components/chat/chat_appbar_leading.dart';
import 'package:whatsapp_app_clone/components/chat/chat_appbar_title.dart';
import 'package:whatsapp_app_clone/components/ink_icon_button.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 4,
        leadingWidth: 72,
        leading: const ChatAppBarLeading(),
        title: const ChatAppBarTitle(
          title: 'Build with Futter',
          summary: 'You, Mark, Bill, Elon, Jeff, others',
        ),
        actions: [
          InkIconButton(icon: Icons.videocam_rounded, onTap: () {}),
          InkIconButton(icon: Icons.call, onTap: () {}),
          InkIconButton(icon: Icons.more_vert, onTap: () {}),
        ],
      ),
    );
  }
}
