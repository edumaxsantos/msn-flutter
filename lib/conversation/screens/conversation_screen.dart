import 'package:flutter/material.dart';
import 'package:msn/chat_list/models/contact_model.dart';
import 'package:msn/conversation/widgets/inputtext_conversation_widget.dart';
import 'package:msn/conversation/widgets/message_conversation_widget.dart';
import 'package:msn/repositories/contact_repository.dart';
import 'package:msn/repositories/message_repository.dart';

class ConversationScreen extends StatefulWidget {
  late final ContactRepository repository;
  ConversationScreen({super.key}) {
    repository = ContactRepository();
  }

  @override
  State<ConversationScreen> createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  @override
  Widget build(BuildContext context) {
    final contact = widget.repository.getAll()[0];
    return Scaffold(
      appBar: _createAppBar(contact: contact),
      body: _createConversation(),
      bottomSheet: const InputTextConversationWidget(),
    );
  }

  Widget _createConversation() {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.grey[200],
      child: SingleChildScrollView(
          child: Column(
        children: MessageRepository()
            .getAll()
            .map(
              (msg) => MessageConversationWidget(message: msg),
            )
            .toList(),
      )),
    );
  }

  AppBar _createAppBar({required ContactModel contact}) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.blue.shade900),
      automaticallyImplyLeading: true,
      centerTitle: true,
      title: Column(
        children: [
          Text(
            contact.name,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            contact.statusMessage,
            style: const TextStyle(color: Colors.black, fontSize: 14),
          )
        ],
      ),
      backgroundColor: Colors.white,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.more_vert,
            color: Colors.blueGrey,
          ),
        )
      ],
    );
  }
}
