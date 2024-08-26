import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/message_field_box.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
            padding: EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://media.es.wired.com/photos/642dc2a6baa2f3d0876e126b/16:9/w_1280,c_limit/ChatGPT%201250693116.jpg'),
            )),
        title: const Text('ChatGPT'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: chatProvider.chatScrollController,
              itemCount: chatProvider.messageList.length,
              itemBuilder:
                  (BuildContext context, int index) {
                final message =
                    chatProvider.messageList[index];
                return (message.fromWho == FromWho.other)
                    ? HerMessageBubble(message: message)
                    : MyMessageBubble(message: message);
              },
            ),
          ),
          const SizedBox(height: 3),
          MessageFieldBox(
            onValue: chatProvider.sendMessage,
          ),
          const SizedBox(height: 3),
        ],
      ),
    );
  }
}
