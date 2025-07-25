part of 'to_do_bloc.dart';

@freezed
abstract class ToDoEvent with _$ToDoEvent {
  const factory ToDoEvent.loadToDos() = LoadToDosEvent;
  const factory ToDoEvent.addToDo({
    required String title,
    required String description,
    DateTime? dueDate,
    required String assignedTo,
    @Default(<String>[]) List<String> tags,
  }) = AddToDoEvent;
  const factory ToDoEvent.deleteToDo(String id) = DeleteToDoEvent;
  const factory ToDoEvent.updateToDo(ToDoModel toDo) = UpdateToDoEvent;
  const factory ToDoEvent.getToDoById(String id) = GetToDoByIdEvent;
  const factory ToDoEvent.generateDescription(String prompt) = GenerateDescriptionEvent;
  const factory ToDoEvent.completeToDo(ToDoModel toDo) = CompleteToDoEvent;
}
