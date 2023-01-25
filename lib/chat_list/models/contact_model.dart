enum Status { online, busy, offline }

class ContactModel {
  final String name;
  final String statusMessage;
  final Status status;
  final int unreadMessages;

  ContactModel({
    required this.name,
    required this.statusMessage,
    required this.status,
    required this.unreadMessages,
  });
}
