import 'package:chat_app/widgets/chat_messages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../widgets/new_message.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Chat App'),
          actions: [
            IconButton(onPressed: (){
              FirebaseAuth.instance.signOut();
            }, icon: Icon(Icons.exit_to_app, color: Theme.of(context).colorScheme.primary))
          ],
        ),
        body: const Column(
          children: [
            Expanded(child: ChatMessages(),),
            NewMessage(),
          ],
        ),
      ),
    );
  }
}
