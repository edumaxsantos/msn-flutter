class MessageModel {
  final String content;
  final DateTime sentDateTime;
  final bool isMyMessage;

  const MessageModel({
    required this.content,
    required this.sentDateTime,
    required this.isMyMessage,
  });
}
