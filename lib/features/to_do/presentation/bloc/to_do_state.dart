part of 'to_do_bloc.dart';

@freezed
abstract class ToDoState with _$ToDoState {
  const factory ToDoState({
    @Default(<ToDoModel>[]) List<ToDoModel> toDosList,
    @Default(Initial()) ResultState<ToDoModel> addToDoResult,
    @Default(Initial()) ResultState<List<ToDoModel>> getToDosResult,
    @Default(Initial()) ResultState<void> deleteToDoResult,
    @Default(Initial()) ResultState<ToDoModel> updateToDoResult,
    @Default(Initial()) ResultState<void> completeToDoResult,
    @Default(Initial()) ResultState<String> generateDescriptionResult,
  }) = _ToDoState;
}
