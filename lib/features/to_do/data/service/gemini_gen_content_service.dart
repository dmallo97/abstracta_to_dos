import 'package:abstracta_to_dos/features/to_do/data/dto/gemini_gen_text_body.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'gemini_gen_content_service.g.dart';

@injectable
@RestApi()
abstract class GeminiGenContentService {
  @factoryMethod
  factory GeminiGenContentService(@Named('geminiAIClient') Dio dio) = _GeminiGenContentService;

  @POST('/models/gemini-2.5-flash:generateContent')
  Future<dynamic> generateDescription(@Body() GeminiGenTextBody body);
}
