class Message {
  final String text;
  final FromWho fromWho;
  final String? imageUrl;

  Message({
    required this.text,
    required this.fromWho,
    this.imageUrl,
  });
}

enum FromWho { me, other }
