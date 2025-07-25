import 'package:abstracta_to_dos/features/to_do/domain/model/to_do_model.dart';
import 'package:abstracta_to_dos/features/to_do/domain/repository/to_do_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddToDo {
  final ToDoRepository toDoRepository;

  AddToDo(this.toDoRepository);

  Future<ToDoModel> call(ToDoModel toDo) async {
    return toDoRepository.addToDo(toDo);
  }
}
