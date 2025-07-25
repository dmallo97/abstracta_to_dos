import 'package:abstracta_to_dos/features/to_do/data/source/to_do_data_source.dart';
import 'package:abstracta_to_dos/features/to_do/domain/model/to_do_model.dart';
import 'package:abstracta_to_dos/features/to_do/domain/repository/to_do_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ToDoRepository)
class ToDoRepositoryImpl implements ToDoRepository {
  final ToDoDataSource toDoDataSource;

  ToDoRepositoryImpl(@Named('toDoLocalSource') this.toDoDataSource);

  @override
  Future<ToDoModel> addToDo(ToDoModel toDo) {
    return toDoDataSource.addToDo(toDo);
  }

  @override
  Future<void> deleteToDo(String id) {
    return toDoDataSource.deleteToDo(id);
  }

  @override
  Future<List<ToDoModel>> getAllToDos() {
    return toDoDataSource.getAllToDos();
  }

  @override
  Future<ToDoModel?> getToDoById(String id) {
    return toDoDataSource.getToDoById(id);
  }

  @override
  Future<ToDoModel> updateToDo(ToDoModel toDo) {
    return toDoDataSource.updateToDo(toDo);
  }
}
