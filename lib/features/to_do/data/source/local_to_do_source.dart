import 'package:abstracta_to_dos/core/exceptions/data_exception.dart';
import 'package:abstracta_to_dos/features/to_do/data/source/to_do_data_source.dart';
import 'package:abstracta_to_dos/features/to_do/domain/model/to_do_model.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

@Injectable(as: ToDoDataSource)
@Named('toDoLocalSource')
class LocalToDoSource implements ToDoDataSource {
  final String todoTableName = 'todos';
  final String tagTableName = 'tags';
  final String todoIdColumn = 'todoId';
  final String otherIdColumn = 'otherId';
  final String titleColumn = 'title';
  final String descriptionColumn = 'description';
  final String dueDateColumn = 'dueDate';
  final String isCompletedColumn = 'isCompleted';
  final String assignedToColumn = 'assignedTo';

  final Database todosDatabase;

  LocalToDoSource(@Named('todosDatabase') this.todosDatabase);

  Future<void> _addToDoTag(int toDoId, String tag) async {
    try {
      await todosDatabase.insert(tagTableName, {
        'todoId': toDoId,
        'tag': tag,
      }, conflictAlgorithm: ConflictAlgorithm.replace);
    } on DatabaseException catch (e) {
      throw DataException(message: 'Failed to add tag to ToDo: $e', type: e);
    }
  }

  Future<void> _replaceToDoTags(int toDoId, List<String> tags) async {
    try {
      await _deleteToDoTags(toDoId);
      for (var tag in tags) {
        await _addToDoTag(toDoId, tag);
      }
    } on DatabaseException catch (e) {
      throw DataException(message: 'Failed to replace tags for ToDo: $e', type: e);
    }
  }

  Future<List<String>> _getToDoTags(int toDoId) async {
    try {
      final rawResult = await todosDatabase.query(tagTableName, where: 'todoId = ?', whereArgs: [toDoId]);
      return rawResult.map((json) => json['tag'] as String).toList();
    } on DatabaseException catch (e) {
      throw DataException(message: 'Failed to add tag to ToDo: $e', type: e);
    }
  }

  Future<void> _deleteToDoTags(int toDoId) async {
    try {
      await todosDatabase.delete(tagTableName, where: 'todoId = ?', whereArgs: [toDoId]);
    } on DatabaseException catch (e) {
      throw DataException(message: 'Failed to delete tags for ToDo: $e', type: e);
    }
  }

  Future<int?> _getRawId(String toDoId) async {
    try {
      final result = await todosDatabase.query(
        todoTableName,
        columns: ['id'],
        where: '$otherIdColumn = ?',
        whereArgs: [toDoId],
      );
      if (result.isEmpty) {
        return null;
      }
      return result.first['id'] as int;
    } on DatabaseException catch (e) {
      throw DataException(message: 'Failed to get raw ID for ToDo: $e', type: e);
    }
  }

  @override
  Future<ToDoModel> addToDo(ToDoModel toDo) async {
    try {
      final toDoRawId = await todosDatabase.insert(
        todoTableName,
        toDo.toJson(),
        conflictAlgorithm: ConflictAlgorithm.abort,
      );
      for (var tag in toDo.tags) {
        await _addToDoTag(toDoRawId, tag);
      }
      return toDo;
    } on DatabaseException catch (e) {
      throw DataException(message: 'Failed to add ToDo: $e', type: e);
    }
  }

  @override
  Future<void> deleteToDo(String id) async {
    try {
      final rawTodoId = await _getRawId(id);
      if (rawTodoId == null) {
        throw DataException(message: 'No ToDo found with id: $id', type: Exception());
      }
      final rowsAffected = await todosDatabase.delete(todoTableName, where: 'id = ?', whereArgs: [rawTodoId]);
      if (rowsAffected == 0) {
        throw DataException(message: 'No ToDo found with id: $id', type: Exception());
      }
    } on DatabaseException catch (e) {
      throw DataException(message: 'Failed to delete ToDo: $e', type: e);
    }
  }

  @override
  Future<List<ToDoModel>> getAllToDos() async {
    try {
      final rawResult = await todosDatabase.query(todoTableName);
      final todoList = Future.wait<ToDoModel>(
        rawResult.map((json) async {
          final rawTodoId = json['id'] as int;
          final tags = await _getToDoTags(rawTodoId);
          final toDo = ToDoModel.fromJson(json);
          return toDo.copyWith(tags: tags);
        }),
      );
      return todoList;
    } on DatabaseException catch (e) {
      throw DataException(message: 'Failed to get all ToDos: $e', type: e);
    }
  }

  @override
  Future<ToDoModel?> getToDoById(String id) async {
    try {
      final result = await todosDatabase.query(todoTableName, where: '$otherIdColumn = ?', whereArgs: [id]);
      if (result.length > 1) {
        throw DataException(message: 'Multiple ToDos found with id: $id', type: Exception());
      } else if (result.isEmpty) {
        return null;
      }
      final rawTodoId = result.first['id'] as int;
      final tags = await _getToDoTags(rawTodoId);
      return ToDoModel.fromJson(result.first).copyWith(tags: tags);
    } on DatabaseException catch (e) {
      throw DataException(message: 'Failed to get ToDo by id: $e', type: e);
    }
  }

  @override
  Future<ToDoModel> updateToDo(ToDoModel toDo) async {
    try {
      await todosDatabase.update(
        todoTableName,
        toDo.toJson(),
        where: '$otherIdColumn = ?',
        whereArgs: [toDo.todoId],
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
      final toDoRawId = await _getRawId(toDo.todoId);
      await _replaceToDoTags(toDoRawId!, toDo.tags);
      return toDo;
    } on DatabaseException catch (e) {
      throw DataException(message: 'Failed to update ToDo: $e', type: e);
    }
  }
}
