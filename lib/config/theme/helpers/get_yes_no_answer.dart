import 'package:yes_no_app/domain/entities/Message.dart';
import 'package:dio/dio.dart';

class GetYesNoAnswer {
  final Dio _dio = Dio();
  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');
    return Message(
      text: response.data['answer'],
      imageUrl: response.data['image'],
      fromWho: FromWho.other,
    );
  }
}
