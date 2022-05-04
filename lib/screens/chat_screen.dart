import 'package:flutter/material.dart';

import 'package:whatsapp_app_clone/components/chat/chat_appbar_leading.dart';
import 'package:whatsapp_app_clone/components/chat/chat_appbar_title.dart';
import 'package:whatsapp_app_clone/components/chat/chat_bubble.dart';
import 'package:whatsapp_app_clone/components/chat/chat_input_bar.dart';
import 'package:whatsapp_app_clone/components/ink_icon_button.dart';
import 'package:whatsapp_app_clone/utils/colors.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              color: WAColors.chatBackground,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ChatBubble(
                        fromMe: false,
                        phoneNumber: '+00 397-3793-0483',
                        message: 'Hi everyone!',
                        time: DateTime.now(),
                      ),
                      ChatBubble(
                        fromMe: true,
                        phoneNumber: '+00 975-3459-3240',
                        message: 'Hi, nice to meet you...',
                        time: DateTime.now(),
                      ),
                      ChatBubble(
                        fromMe: false,
                        phoneNumber: '+00 324-5670-0032',
                        message:
                            'Flutter is amazing framework for building beautiful UI with Dart programming language, its super easy to learn and powerfull!',
                        time: DateTime.now(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const ChatInputBar(),
        ],
      ),
    );
  }
}
