import 'package:flutter/material.dart';

class InputTextConversationWidget extends StatefulWidget {
  const InputTextConversationWidget({super.key});

  @override
  State<InputTextConversationWidget> createState() =>
      _InputTextConversationWidgetState();
}

class _InputTextConversationWidgetState
    extends State<InputTextConversationWidget> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: _createInput(),
        ),
        TextButton(
          onPressed: () {},
          child: Icon(
            Icons.send,
            color: Colors.blue[900],
          ),
        ),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }

  _createInput() {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 30, left: 30),
      child: TextField(
        keyboardType: TextInputType.multiline,
        minLines: 1,
        maxLines: 5,
        autofocus: true,
        controller: _controller,
        style: const TextStyle(fontSize: 16),
        decoration: InputDecoration(
          isDense: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          filled: true,
          fillColor: Colors.blueGrey[50],
        ),
      ),
    );
  }
}
