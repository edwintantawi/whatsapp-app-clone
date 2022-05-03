import 'package:flutter/material.dart';

import 'package:whatsapp_app_clone/components/chat_list_item.dart';

class ChatsTab extends StatelessWidget {
  const ChatsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(bottom: 80),
      children: const [
        ChatListItem(),
        ChatListItem(),
        ChatListItem(),
        ChatListItem(),
        ChatListItem(),
        ChatListItem(),
        ChatListItem(),
        ChatListItem(),
        ChatListItem(),
        ChatListItem(),
        ChatListItem(),
        ChatListItem(),
        ChatListItem(),
        ChatListItem(),
        ChatListItem(),
        ChatListItem(),
        ChatListItem(),
        ChatListItem(),
      ],
    );
  }
}
