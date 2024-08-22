import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/infrastructure/models/yes_no_model.dart';

var logger = Logger();

class GetYesNoAnswer {
  final _dio = Dio();
  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');

    if (response.statusCode != 200) {
      logger.e('Error getting answer');
      return Message(text: 'Error getting answer', fromWho: FromWho.other);
    }
    final yesNoModel = YesNoModel.fromJsonMap(response.data);
    return yesNoModel.ToMessageEntity();
  }
}
