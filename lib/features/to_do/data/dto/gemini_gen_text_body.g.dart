// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gemini_gen_text_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GeminiGenTextBody _$GeminiGenTextBodyFromJson(Map<String, dynamic> json) =>
    _GeminiGenTextBody(
      contents: json['contents'] as List<dynamic>,
      system_instruction: json['system_instruction'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$GeminiGenTextBodyToJson(_GeminiGenTextBody instance) =>
    <String, dynamic>{
      'contents': instance.contents,
      'system_instruction': instance.system_instruction,
    };
