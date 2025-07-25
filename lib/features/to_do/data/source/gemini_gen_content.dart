import 'package:abstracta_to_dos/core/exceptions/data_exception.dart';
import 'package:abstracta_to_dos/features/to_do/data/dto/gemini_gen_text_body.dart';
import 'package:abstracta_to_dos/features/to_do/data/service/gemini_gen_content_service.dart';
import 'package:abstracta_to_dos/features/to_do/data/source/generate_content_source.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: GenerateContentSource)
@Named('geminiContentSource')
class GeminiGenContent implements GenerateContentSource {
  final GeminiGenContentService _service;

  GeminiGenContent(this._service);

  @override
  Future<String> generateDescription(String prompt) async {
    try {
      final responseJson =
          await _service.generateDescription(
                GeminiGenTextBody.create(
                  prompt: prompt,
                  systemInstruction:
                      'You are a helpful assistant. Write a detailed description of the task. Be concise and clear.',
                ),
              )
              as Map<String, dynamic>;
      return responseJson['candidates'][0]['content']['parts'][0]['text'] as String;
    } on DioException catch (e) {
      throw DataException(type: e, message: e.toString());
    }
  }
}
