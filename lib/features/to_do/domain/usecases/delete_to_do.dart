import 'package:abstracta_to_dos/features/to_do/domain/repository/to_do_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteToDo {
  final ToDoRepository toDoRepository;

  DeleteToDo(this.toDoRepository);

  Future<void> call(String toDoId) async {
    await toDoRepository.deleteToDo(toDoId);
  }
}