import 'package:flutter/material.dart';

void main() => runApp(const MyMessaggeBubble());

class MyMessaggeBubble extends StatelessWidget {
  const MyMessaggeBubble({super.key});

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
          child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Hola Mundo",
                style: TextStyle(color: Colors.white),
              )),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
