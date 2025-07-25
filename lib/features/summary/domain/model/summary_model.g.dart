// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SummaryModel _$SummaryModelFromJson(Map<String, dynamic> json) =>
    _SummaryModel(
      totalToDos: (json['totalToDos'] as num).toInt(),
      completedToDos: (json['completedToDos'] as num).toInt(),
      pendingToDos: (json['pendingToDos'] as num).toInt(),
      overdueToDos: (json['overdueToDos'] as num).toInt(),
      totalTagsUsed: (json['totalTagsUsed'] as num).toInt(),
      overdueUsers: _$recordConvert(
        json['overdueUsers'],
        ($jsonValue) => (
          ($jsonValue[r'$1'] as num).toInt(),
          ($jsonValue[r'$2'] as List<dynamic>).map((e) => e as String).toList(),
        ),
      ),
      completedWithinDay: _$recordConvert(
        json['completedWithinDay'],
        ($jsonValue) => (
          ($jsonValue[r'$1'] as num).toInt(),
          ($jsonValue[r'$2'] as List<dynamic>)
              .map((e) => ToDoModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      ),
    );

Map<String, dynamic> _$SummaryModelToJson(_SummaryModel instance) =>
    <String, dynamic>{
      'totalToDos': instance.totalToDos,
      'completedToDos': instance.completedToDos,
      'pendingToDos': instance.pendingToDos,
      'overdueToDos': instance.overdueToDos,
      'totalTagsUsed': instance.totalTagsUsed,
      'overdueUsers': <String, dynamic>{
        r'$1': instance.overdueUsers.$1,
        r'$2': instance.overdueUsers.$2,
      },
      'completedWithinDay': <String, dynamic>{
        r'$1': instance.completedWithinDay.$1,
        r'$2': instance.completedWithinDay.$2,
      },
    };

$Rec _$recordConvert<$Rec>(Object? value, $Rec Function(Map) convert) =>
    convert(value as Map<String, dynamic>);
