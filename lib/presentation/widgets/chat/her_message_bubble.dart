import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/Message.dart';

class HerMessaggeBubble extends StatelessWidget {
  final Message message;

  const HerMessaggeBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: color.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                message.text,
                style: const TextStyle(color: Colors.white),
              )),
        ),
        const SizedBox(height: 10),
        if (message.imageUrl != null) // Add this line
          _ImageBlubble(
            image: message.imageUrl,
          ),
        const SizedBox(height: 10),
      ],
    );
  }
}

class _ImageBlubble extends StatelessWidget {
  final String? image;

  const _ImageBlubble({required this.image});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        image!,
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          return loadingProgress == null
              ? child
              : SizedBox(
                  width: size.width * 0.7,
                  height: 150,
                  child: const Center(child: Text('Loading...')));
        },
      ),
    );
  }
}
