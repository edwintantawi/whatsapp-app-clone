import 'package:flutter/material.dart';

class ChatAppBarTitle extends StatelessWidget {
  final String title;
  final String? summary;

  const ChatAppBarTitle({
    Key? key,
    required this.title,
    this.summary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      title: Text(
        title,
        maxLines: 1,
        softWrap: false,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: summary != null
          ? Text(
              summary!,
              maxLines: 1,
              softWrap: false,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.grey[300], fontSize: 12),
            )
          : null,
    );
  }
}
