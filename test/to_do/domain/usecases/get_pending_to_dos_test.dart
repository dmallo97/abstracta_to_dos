import 'package:abstracta_to_dos/features/to_do/domain/model/to_do_model.dart';
import 'package:abstracta_to_dos/features/to_do/domain/usecases/get_pending_to_dos.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../mocks/mock_to_do_repository.dart';

void main() {
  group('GetPendingToDos', () {
    late GetPendingToDos getPendingToDos;
    late MockToDoRepository mockToDoRepository;

    setUp(() {
      mockToDoRepository = MockToDoRepository();
      getPendingToDos = GetPendingToDos(mockToDoRepository);
    });
    // Add your tests here
    test('should get all pending to dos', () async {
      // Arrange
      final toDoList = [
        ToDoModel.create(
          title: 'Test Title',
          description: 'Test Description',
          dueDate: DateTime.now(),
          assignedTo: 'User1',
          tags: ['tag1', 'tag2'],
        ).copyWith(isCompleted: true, completedAt: DateTime.now()),
        ToDoModel.create(
          title: 'Test Title 2',
          description: 'Test Description 2',
          dueDate: DateTime.now(),
          assignedTo: 'User2',
          tags: ['tag1', 'tag2'],
        ),
        ToDoModel.create(
          title: 'Test Title 3',
          description: 'Test Description 3',
          dueDate: DateTime.now().add(Duration(days: 1)),
          assignedTo: 'User3',
          tags: ['tag1', 'tag2'],
        ),
        ToDoModel.create(
          title: 'Test Title 4',
          description: 'Test Description 4',
          dueDate: DateTime.now().add(Duration(days: 2)),
          assignedTo: 'User4',
          tags: ['tag1', 'tag2'],
        ),
      ];

      when(() => mockToDoRepository.getAllToDos()).thenAnswer((_) async => toDoList);

      // Act

      final result = await getPendingToDos();

      // Assert
      expect(result, isA<List<ToDoModel>>());
      expect(result.length, 3);
      expect(result[0].title, 'Test Title 2');
      expect(result[1].title, 'Test Title 3');
      expect(result[2].title, 'Test Title 4');
      verify(() => mockToDoRepository.getAllToDos()).called(1);
      verifyNoMoreInteractions(mockToDoRepository);
    });
  });
}
