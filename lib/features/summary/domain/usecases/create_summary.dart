import 'package:abstracta_to_dos/features/summary/domain/model/summary_model.dart';
import 'package:abstracta_to_dos/features/to_do/domain/repository/to_do_repository.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateSummary {
  final ToDoRepository toDoRepository;

  CreateSummary(this.toDoRepository);

  Future<SummaryModel> call() async {
    final todos = await toDoRepository.getAllToDos();
    final completedTodos = todos.where((todo) => todo.isCompleted).toList();
    final pendingTodos = todos.where((todo) => !todo.isCompleted).toList();

    final aux = todos.expand((todo) => todo.tags).toSet();

    debugPrint(aux.toString());

    return SummaryModel(
      totalToDos: todos.length,
      completedToDos: completedTodos.length,
      pendingToDos: pendingTodos.length,
      overdueToDos: pendingTodos.where((todo) => todo.dueDate?.isBefore(DateTime.now()) ?? false).length,
      totalTagsUsed: todos.expand((todo) => todo.tags).toSet().length,
      overdueUsers: (
        pendingTodos.where((todo) => todo.dueDate?.isBefore(DateTime.now()) ?? false).length,
        pendingTodos
            .where((todo) => todo.dueDate?.isBefore(DateTime.now()) ?? false)
            .map((todo) => todo.assignedTo)
            .toSet()
            .toList(),
      ),
      completedWithinDay: (
        completedTodos
            .where(
              (todo) =>
                  todo.completedAt != null && todo.completedAt!.isAfter(DateTime.now().subtract(Duration(days: 1))),
            )
            .length,
        completedTodos
            .where(
              (todo) =>
                  todo.completedAt != null && todo.completedAt!.isAfter(DateTime.now().subtract(Duration(days: 1))),
            )
            .toList(),
      ),
    );
  }
}
