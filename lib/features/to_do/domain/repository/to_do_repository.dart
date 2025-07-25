import 'package:abstracta_to_dos/features/to_do/domain/model/to_do_model.dart';

abstract class ToDoRepository {
  Future<ToDoModel> addToDo(ToDoModel toDo);
  Future<ToDoModel> updateToDo(ToDoModel toDo);
  Future<void> deleteToDo(String id);
  Future<List<ToDoModel>> getAllToDos();
  Future<ToDoModel?> getToDoById(String id);
}