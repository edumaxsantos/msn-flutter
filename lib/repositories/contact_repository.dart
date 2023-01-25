import 'package:msn/chat_list/models/contact_model.dart';

class ContactRepository {
  final List<ContactModel> _contacts = [
    ContactModel(
      name: 'Dante Lucca',
      statusMessage: '🎵 After Dark - Mr Kitty',
      status: Status.online,
      unreadMessages: 8,
    ),
    ContactModel(
      name: 'Lia :)',
      statusMessage: 'chama ai',
      status: Status.online,
      unreadMessages: 0,
    ),
    ContactModel(
      name: 'Oliver Zasp',
      statusMessage: '🎵 gospel - wotaku',
      status: Status.online,
      unreadMessages: 0,
    ),
    ContactModel(
      name: 'Mikaaaa',
      statusMessage: 'shinigami eyes.',
      status: Status.busy,
      unreadMessages: 10,
    ),
  ];

  getAll() {
    return _contacts;
  }
}
