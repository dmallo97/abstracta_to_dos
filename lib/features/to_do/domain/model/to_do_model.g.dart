// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'to_do_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ToDoModel _$ToDoModelFromJson(Map<String, dynamic> json) => _ToDoModel(
  todoId: json['otherId'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  dueDate:
      json['dueDate'] == null
          ? null
          : DateTime.parse(json['dueDate'] as String),
  isCompleted: _fromJsonBool((json['isCompleted'] as num).toInt()),
  assignedTo: json['assignedTo'] as String,
  completedAt:
      json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
);

Map<String, dynamic> _$ToDoModelToJson(_ToDoModel instance) =>
    <String, dynamic>{
      'otherId': instance.todoId,
      'title': instance.title,
      'description': instance.description,
      'dueDate': instance.dueDate?.toIso8601String(),
      'isCompleted': _toJsonBool(instance.isCompleted),
      'assignedTo': instance.assignedTo,
      'completedAt': instance.completedAt?.toIso8601String(),
    };
