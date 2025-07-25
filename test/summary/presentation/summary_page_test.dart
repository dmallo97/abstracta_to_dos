import 'package:abstracta_to_dos/core/common/result_state.dart';
import 'package:abstracta_to_dos/features/summary/domain/model/summary_model.dart';
import 'package:abstracta_to_dos/features/summary/presentation/cubit/summary_cubit.dart';
import 'package:abstracta_to_dos/features/summary/presentation/summary_page.dart';
import 'package:abstracta_to_dos/features/to_do/domain/model/to_do_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';

import '../../mocks/mock_summary_cubit.dart';

void main() {
  final getIt = GetIt.instance;

  setUpAll(() {
    registerFallbackValue(FakeSummaryState());
  });
  group('SummaryPage', () {
    late MockSummaryCubit mockSummaryCubit;

    setUp(() async {
      await getIt.reset();
      mockSummaryCubit = MockSummaryCubit();
      getIt.registerLazySingleton<SummaryCubit>(() => mockSummaryCubit);
    });

    testWidgets('displays stats cards when summary data is loaded', (WidgetTester tester) async {
      final summary = SummaryModel(
        totalToDos: 4,
        completedToDos: 1,
        pendingToDos: 3,
        overdueToDos: 2,
        totalTagsUsed: 5,
        overdueUsers: (2, ['Alice', 'Bob']),
        completedWithinDay: (
          1,
          [
            ToDoModel.create(
              title: 'Test Task',
              description: 'Test Description',
              dueDate: DateTime.now(),
              assignedTo: 'User',
              tags: ['tag1', 'tag2'],
            ),
          ],
        ),
      );

      final state = SummaryState(summaryResult: Data(data: summary));

      when(() => mockSummaryCubit.state).thenReturn(state);
      when(() => mockSummaryCubit.stream).thenAnswer((_) => Stream.value(state));

      await tester.pumpWidget(MaterialApp(home: const SummaryPage()));

      expect(find.text('Completed'), findsOneWidget);
      expect(find.text('1'), findsExactly(2));
      expect(find.text('Overdue'), findsOneWidget);
      expect(find.text('2'), findsOneWidget);
      expect(find.text('Alice, Bob'), findsOneWidget);
    });

    testWidgets('shows loading spinner by default', (WidgetTester tester) async {
      final state = const SummaryState(summaryResult: Initial());
      when(() => mockSummaryCubit.state).thenReturn(state);
      when(() => mockSummaryCubit.stream).thenAnswer((_) => Stream.value(state));

      await tester.pumpWidget(
        MaterialApp(
          home: const SummaryPage(),
        ),
      );

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });
  });
}
