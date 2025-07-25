import 'package:abstracta_to_dos/features/summary/domain/model/summary_model.dart';
import 'package:abstracta_to_dos/features/summary/domain/usecases/create_summary.dart';
import 'package:abstracta_to_dos/features/to_do/domain/model/to_do_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../mocks/mock_to_do_repository.dart';

void main() {
  group('CreateSummary', () {
    late CreateSummary createSummary;
    late MockToDoRepository mockToDoRepository;

    setUp(() {
      mockToDoRepository = MockToDoRepository();
      createSummary = CreateSummary(mockToDoRepository);
    });
    // Add your tests here
    test('should create a summary from 4 existing tasks', () async {
      // Arrange
      final quicker = ToDoModel.create(
        title: 'Test Title',
        description: 'Test Description',
        dueDate: DateTime.now(),
        assignedTo: 'User1',
        tags: ['tag1', 'tag2'],
      ).copyWith(isCompleted: true, completedAt: DateTime.now());
      final toDoList = [
        quicker,
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

      final result = await createSummary();

      // Assert
      expect(result, isA<SummaryModel>());
      expect(result.totalToDos, 4);
      expect(result.completedToDos, 1);
      expect(result.pendingToDos, 3);
      expect(result.overdueToDos, 1);
      expect(result.totalTagsUsed, 2);
      expect(result.overdueUsers.$1, 1);
      expect(result.overdueUsers.$2, ['User2']);
      expect(result.completedWithinDay.$1, 1);
      expect(result.completedWithinDay.$2, [quicker]);
      verify(() => mockToDoRepository.getAllToDos()).called(1);
      verifyNoMoreInteractions(mockToDoRepository);
    });
  });
}
