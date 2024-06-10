import 'dart:math';
import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/Message.dart';

import '../../config/theme/helpers/get_yes_no_answer.dart';

class ChatProvider extends ChangeNotifier {
  final chatScrollController = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  List<Message> messages = [
    Message(
      text: "Hola...",
      fromWho: FromWho.me,
    ),
    Message(
      text: "Cómo estás?",
      fromWho: FromWho.me,
    ),
    Message(
      text: "Cómo estás?",
      fromWho: FromWho.me,
    ),
    Message(
      text: "bien",
      fromWho: FromWho.other,
    ),
  ];

  Future<void> sendMessage(String message) async {
    final newMessage = Message(
      text: message,
      fromWho: FromWho.me,
    );
    if (newMessage.text.isNotEmpty) {
      messages.add(newMessage);
    }
    if (message.endsWith('?')) {
      getAnswer();
    }
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> getAnswer() async {
    final answer = await getYesNoAnswer.getAnswer();
    messages.add(answer);
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 300));

    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}
