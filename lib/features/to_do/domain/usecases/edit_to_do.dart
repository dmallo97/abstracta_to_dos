import 'package:abstracta_to_dos/features/to_do/domain/model/to_do_model.dart';
import 'package:abstracta_to_dos/features/to_do/domain/repository/to_do_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class EditToDo {
  final ToDoRepository repository;

  EditToDo(this.repository);

  Future<void> call(ToDoModel toDo) async {
    await repository.updateToDo(toDo);
  }
}