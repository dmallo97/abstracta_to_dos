import 'package:abstracta_to_dos/features/to_do/domain/model/to_do_model.dart';
import 'package:abstracta_to_dos/features/to_do/domain/usecases/add_to_do.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../mocks/mock_to_do_repository.dart';

void main() {
  group('AddToDo', () {
    late AddToDo addToDo;
    late MockToDoRepository mockToDoRepository;

    setUp(() {
      mockToDoRepository = MockToDoRepository();
      addToDo = AddToDo(mockToDoRepository);
    });
    // Add your tests here
    test('should create a new ToDo', () async {
      // Arrange
      final title = 'Test Title';
      final description = 'Test Description';
      final dueDate = DateTime.now().add(Duration(days: 3));
      final assignedTo = 'User1';
      final tags = ['tag1', 'tag2'];
      final toDo = ToDoModel.create(
        title: title,
        description: description,
        dueDate: dueDate,
        assignedTo: assignedTo,
        tags: tags,
      );

      when(() => mockToDoRepository.addToDo(toDo)).thenAnswer((_) async => toDo);

      // Act
      final result = await addToDo(toDo);

      // Assert
      expect(result, isA<ToDoModel>());
      expect(result.todoId, toDo.todoId);
      expect(result.title, title);
      expect(result.description, description);
      expect(result.dueDate, dueDate);
      expect(result.assignedTo, assignedTo);
      expect(result.tags, tags);
      expect(result.isCompleted, false);
      expect(result.completedAt, isNull);
      verify(() => mockToDoRepository.addToDo(toDo)).called(1);
      verifyNoMoreInteractions(mockToDoRepository);
    });
  });
}
