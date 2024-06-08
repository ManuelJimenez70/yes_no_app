import 'package:flutter/material.dart';

void main() => runApp(const HerMessaggeBubble());

class HerMessaggeBubble extends StatelessWidget {
  const HerMessaggeBubble({super.key});

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
          child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "jajajaja jaja",
                style: TextStyle(color: Colors.white),
              )),
        ),
        const SizedBox(height: 10),
        _ImageBlubble(),
        const SizedBox(height: 10),
      ],
    );
  }
}

class _ImageBlubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://yesno.wtf/assets/yes/3-422e51268d64d78241720a7de52fe121.gif',
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
      ),
    );
  }
}
