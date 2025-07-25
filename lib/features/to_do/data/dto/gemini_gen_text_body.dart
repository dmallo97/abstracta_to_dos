// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'gemini_gen_text_body.freezed.dart';
part 'gemini_gen_text_body.g.dart';

@freezed
abstract class GeminiGenTextBody with _$GeminiGenTextBody {
  const GeminiGenTextBody._();
  const factory GeminiGenTextBody({required List contents, Map<String, dynamic>? system_instruction}) =
      _GeminiGenTextBody;

  factory GeminiGenTextBody.create({required String prompt, String? systemInstruction}) {
    return GeminiGenTextBody(
      contents: [
        {
          'parts': [
            {'text': prompt},
          ],
        },
      ],
      system_instruction:
          systemInstruction != null
              ? {
                'parts': [
                  {'text': systemInstruction},
                ],
              }
              : null,
    );
  }

  factory GeminiGenTextBody.fromJson(Map<String, dynamic> json) => _$GeminiGenTextBodyFromJson(json);
}
