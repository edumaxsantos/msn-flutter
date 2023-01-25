import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:msn/models/message_model.dart';

class MessageConversationWidget extends StatelessWidget {
  final MessageModel message;
  const MessageConversationWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Container(
        alignment: _alignment(),
        child: Column(
          crossAxisAlignment: _crossAxisAlignment(),
          children: [
            _createMessage(context),
            _time(),
          ],
        ),
      ),
    );
  }

  Widget _createMessage(BuildContext context) {
    return SizedBox(
      width: (kIsWeb)
          ? MediaQuery.of(context).size.width / 2
          : MediaQuery.of(context).size.width / 1.5,
      child: Card(
        color: message.isMyMessage ? Colors.lightBlue[100] : null,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: _createBorder(),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 12,
          ),
          child: Text(
            message.content,
          ),
        ),
      ),
    );
  }

  Widget _time() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Text(
        DateFormat("kk:mm").format(message.sentDateTime),
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 11,
        ),
      ),
    );
  }

  AlignmentGeometry _alignment() {
    return message.isMyMessage ? Alignment.topRight : Alignment.topLeft;
  }

  CrossAxisAlignment _crossAxisAlignment() {
    return message.isMyMessage
        ? CrossAxisAlignment.start
        : CrossAxisAlignment.end;
  }

  BorderRadiusGeometry _createBorder() {
    const circular = 15.0;
    const BorderRadiusGeometry basicBorder = BorderRadius.only(
        topRight: Radius.circular(circular),
        bottomLeft: Radius.circular(circular));

    return message.isMyMessage
        ? basicBorder.add(
            const BorderRadius.only(
              topLeft: Radius.circular(circular),
            ),
          )
        : basicBorder.add(
            const BorderRadius.only(
              bottomRight: Radius.circular(circular),
            ),
          );
  }
}
