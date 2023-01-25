import 'package:flutter/material.dart';
import 'package:msn/chat_list/models/contact_model.dart';
import 'package:msn/conversation/screens/conversation_screen.dart';

class ChatListItemWidget extends StatelessWidget {
  final ContactModel contact;
  const ChatListItemWidget({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ConversationScreen()));
        },
        title: Text(
          contact.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(contact.statusMessage),
        selected: false,
        tileColor: (contact.unreadMessages > 0)
            ? Colors.lightBlue[100]
            : Colors.transparent,
        trailing: (contact.unreadMessages > 0)
            ? Chip(
                label: Text('${contact.unreadMessages}'),
                backgroundColor: Colors.blue[400],
                labelStyle: const TextStyle(
                  color: Colors.white,
                ),
              )
            : null,
      ),
    );
  }
}
