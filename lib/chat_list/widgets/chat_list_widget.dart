import 'package:flutter/material.dart';
import 'package:msn/chat_list/models/contact_model.dart';
import 'package:msn/chat_list/widgets/chat_list_item_widget.dart';
import 'package:msn/repositories/contact_repository.dart';

class ChatListWidget extends StatefulWidget {
  const ChatListWidget({super.key});

  @override
  State<ChatListWidget> createState() => _ChatListWidgetState();
}

class _ChatListWidgetState extends State<ChatListWidget> {
  late final ContactRepository repository;

  @override
  void initState() {
    super.initState();
    repository = ContactRepository();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _buildFavorites(),
      ),
    );
  }

  Widget _buildFavorites() {
    return _buildPanel(title: 'Favorites', contacts: repository.getAll());
  }

  Widget _buildPanel(
      {required String title, required List<ContactModel> contacts}) {
    return ExpansionTile(
      controlAffinity: ListTileControlAffinity.trailing,
      title: Text(title),
      children: contacts
          .map((contact) => ChatListItemWidget(contact: contact))
          .toList(),
    );
  }
}
