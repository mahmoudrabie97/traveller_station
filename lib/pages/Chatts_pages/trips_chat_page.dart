import 'package:flutter/material.dart';

class TripsChatPage extends StatefulWidget {
  const TripsChatPage({super.key});

  @override
  TripsChatPageState createState() => TripsChatPageState();
}

class TripsChatPageState extends State<TripsChatPage> {
  final List<Message> _messages = [
    Message(
      text: 'Hello, how are you?',
      isUserMessage: false,
    ),
    Message(
      text: 'I\'m doing great, thanks for asking!',
      isUserMessage: true,
    ),
    Message(
      text: 'That\'s good to hear. Do you have any plans for the weekend?',
      isUserMessage: false,
    ),
    Message(
      text: 'I\'m planning to go hiking with some friends. What about you?',
      isUserMessage: true,
    ),
  ];

  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                return Align(
                  alignment: message.isUserMessage
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: message.isUserMessage
                            ? Colors.blue
                            : Colors.grey[300],
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        message.text,
                        style: TextStyle(
                          color: message.isUserMessage
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Divider(height: 1.0),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                      hintText: 'Type your message',
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.all(16.0),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    if (_textController.text.isNotEmpty) {
                      setState(() {
                        _messages.add(
                          Message(
                            text: _textController.text,
                            isUserMessage: true,
                          ),
                        );
                        _textController.clear();
                      });
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Message {
  final String text;
  final bool isUserMessage;

  Message({
    required this.text,
    required this.isUserMessage,
  });
}
