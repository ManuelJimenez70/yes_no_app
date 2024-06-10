import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/Message.dart';

class MyMessaggeBubble extends StatelessWidget {
  final Message message;

  const MyMessaggeBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: color.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                message.text,
                style: const TextStyle(color: Colors.white),
              )),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
