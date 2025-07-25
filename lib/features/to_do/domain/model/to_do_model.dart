import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'to_do_model.freezed.dart';
part 'to_do_model.g.dart';

bool _fromJsonBool(int value) {
  return value == 1;
}

int _toJsonBool(bool value) {
  return value ? 1 : 0;
}

@freezed
abstract class ToDoModel with _$ToDoModel {
  const ToDoModel._();
  const factory ToDoModel({
    @JsonKey(name: 'otherId') required String todoId,
    required String title,
    required String description,
    DateTime? dueDate,
    @JsonKey(fromJson: _fromJsonBool, toJson: _toJsonBool) required bool isCompleted,
    required String assignedTo,
    DateTime? completedAt,
    @JsonKey(includeToJson: false) @Default(<String>[]) List<String> tags,
  }) = _ToDoModel;

  factory ToDoModel.create({
    required String title,
    required String description,
    DateTime? dueDate,
    required String assignedTo,
    List<String> tags = const [],
  }) {
    return _ToDoModel(
      todoId: const Uuid().v4(),
      title: title,
      description: description,
      dueDate: dueDate,
      isCompleted: false,
      assignedTo: assignedTo,
      tags: tags,
    );
  }

  factory ToDoModel.fromJson(Map<String, dynamic> json) => _$ToDoModelFromJson(json);
}
