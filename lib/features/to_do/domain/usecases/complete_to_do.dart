import 'package:abstracta_to_dos/features/to_do/domain/model/to_do_model.dart';
import 'package:abstracta_to_dos/features/to_do/domain/usecases/edit_to_do.dart';
import 'package:injectable/injectable.dart';

@injectable
class CompleteToDo {
  final EditToDo editToDo;

  CompleteToDo(this.editToDo);

  Future<void> call(ToDoModel toDo) async {
    toDo = toDo.copyWith(isCompleted: true, completedAt: DateTime.now());
    await editToDo(toDo);
  }
}
