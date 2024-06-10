import 'package:yes_no_app/domain/entities/Message.dart';
import 'package:dio/dio.dart';
import 'package:yes_no_app/infraestructure/models/yes_no_model.dart';

class GetYesNoAnswer {
  final Dio _dio = Dio();
  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');
    final answer = YesNoModel.fromJson(response.data);
    return answer.toMessage();
  }
}
