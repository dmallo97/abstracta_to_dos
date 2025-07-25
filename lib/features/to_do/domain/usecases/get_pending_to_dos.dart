import 'package:abstracta_to_dos/features/to_do/domain/model/to_do_model.dart';
import 'package:abstracta_to_dos/features/to_do/domain/repository/to_do_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetPendingToDos {
  final ToDoRepository toDoRepository;

  GetPendingToDos(this.toDoRepository);

  Future<List<ToDoModel>> call() async {
    final allToDos = await toDoRepository.getAllToDos();
    return allToDos.where((toDo) => !toDo.isCompleted).toList();
  }
}