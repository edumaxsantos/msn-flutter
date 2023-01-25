import 'package:msn/models/message_model.dart';

class MessageRepository {
  final List<MessageModel> _messages = [
    MessageModel(
      content: 'hahaha obviously 😎',
      sentDateTime: DateTime.parse('2022-09-28T19:12:00'),
      isMyMessage: false,
    ),
    MessageModel(
      content: 'I like the music you are listening to',
      sentDateTime: DateTime.parse('2022-09-28T19:13:00'),
      isMyMessage: true,
    ),
    MessageModel(
      content: 'my favorite song :)',
      sentDateTime: DateTime.parse('2022-09-28T19:14:00'),
      isMyMessage: false,
    ),
    MessageModel(
      content: 'my favorite is pandora of parkway drive. you know?',
      sentDateTime: DateTime.parse('2022-09-28T19:14:00'),
      isMyMessage: true,
    ),
    MessageModel(
      content: 'hahaha obviously 😎',
      sentDateTime: DateTime.parse('2022-09-28T19:12:00'),
      isMyMessage: false,
    ),
    MessageModel(
      content: 'I like the music you are listening to',
      sentDateTime: DateTime.parse('2022-09-28T19:13:00'),
      isMyMessage: true,
    ),
    MessageModel(
      content: 'my favorite song :)',
      sentDateTime: DateTime.parse('2022-09-28T19:14:00'),
      isMyMessage: false,
    ),
    MessageModel(
      content: 'my favorite is pandora of parkway drive. you know?',
      sentDateTime: DateTime.parse('2022-09-28T19:14:00'),
      isMyMessage: true,
    ),
    MessageModel(
      content: 'hahaha obviously 😎',
      sentDateTime: DateTime.parse('2022-09-28T19:12:00'),
      isMyMessage: false,
    ),
    MessageModel(
      content: 'I like the music you are listening to',
      sentDateTime: DateTime.parse('2022-09-28T19:13:00'),
      isMyMessage: true,
    ),
    MessageModel(
      content: 'my favorite song :)',
      sentDateTime: DateTime.parse('2022-09-28T19:14:00'),
      isMyMessage: false,
    ),
    MessageModel(
      content: 'my favorite is pandora of parkway drive. you know?',
      sentDateTime: DateTime.parse('2022-09-28T19:14:00'),
      isMyMessage: true,
    ),
  ];

  List<MessageModel> getAll() {
    return _messages;
  }
}
