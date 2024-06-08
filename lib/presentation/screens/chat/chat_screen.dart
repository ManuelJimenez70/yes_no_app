import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

void main() => runApp(const ChatScreen());

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
                  'https://scontent-bog2-1.xx.fbcdn.net/v/t39.30808-6/426453242_25361791203468102_5589956760607498685_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeElQBRoYyBQitOfEZZnCeGhEhQojIPb2VASFCiMg9vZUCUVsDewkPnsDXtnfoMcmXzcRp50wbNdMLyT2v2CLLc7&_nc_ohc=wf8YAmQnbCgQ7kNvgFsXyH8&_nc_ht=scontent-bog2-1.xx&oh=00_AYBS7vmUiSs1PAY_ZoUX5sAgUUexA5ZFR9TMxeZermwHVA&oe=666AA0C2'),
            ),
          ),
          title: const Text('Amor ❤'),
          centerTitle: false,
        ),
        body: _ChatView());
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                      ? const MyMessaggeBubble()
                      : const HerMessaggeBubble();
                },
              ),
            ),
            const Text("Hola Mundo")
          ],
        ),
      ),
    );
  }
}
