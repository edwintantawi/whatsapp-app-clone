import 'package:flutter/material.dart';

class ChatListItem extends StatelessWidget {
  const ChatListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).primaryColor,
      ),
      title: const Text('The Messages'),
      subtitle: const Text(
        'You: Flutter is amazing tools for building beautiful UI',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        softWrap: false,
      ),
      trailing: const SizedBox(
        height: 40,
        child: Text(
          '5/1/22',
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
