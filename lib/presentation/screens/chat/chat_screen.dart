import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';

import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

import '../../widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://imgs.search.brave.com/t1yzsFMLJKAcXTwIVohz-XDCBIoAFgGIo9eAtsooL4A/rs:fit:356:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC4x/RnhyRG41emlSX3Bw/eVdqa3p2Ump3SGFK/MyZwaWQ9QXBp'),
          ),
        ),
        title: const Text('Mi amor :)'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 80,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                    ? const HerMessageBubble()
                    : const MyMessageBubble();
                },
              ),
            ),

            const SizedBox(height: 4),
            // Caja de Texto de mensajes
            const MessageFieldBox(),
            const SizedBox(height: 4),

          ],
        ),
      ),
    );
  }
}
