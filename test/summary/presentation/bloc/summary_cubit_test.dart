import 'package:abstracta_to_dos/core/common/result_state.dart';
import 'package:abstracta_to_dos/core/exceptions/data_exception.dart';
import 'package:abstracta_to_dos/features/summary/domain/model/summary_model.dart';
import 'package:abstracta_to_dos/features/summary/domain/usecases/create_summary.dart';
import 'package:abstracta_to_dos/features/summary/presentation/cubit/summary_cubit.dart';
import 'package:abstracta_to_dos/features/to_do/domain/model/to_do_model.dart';
import 'package:abstracta_to_dos/features/to_do/presentation/bloc/to_do_bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../mocks/mock_create_summary.dart';
import '../../../mocks/mock_to_do_bloc.dart';

void main() {
  final getIt = GetIt.instance;

  group('SummaryCubit', () {
    late MockCreateSummary mockCreateSummary;
    late MockToDoBloc mockToDoBloc;

    final expectedSummaryResult = SummaryModel(
      totalToDos: 5,
      completedToDos: 2,
      pendingToDos: 3,
      overdueToDos: 1,
      totalTagsUsed: 3,
      overdueUsers: (1, ['Bob']),
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

    setUpAll(() {
      registerFallbackValue(FakeToDoState());
    });

    setUp(() async {
      mockCreateSummary = MockCreateSummary();
      mockToDoBloc = MockToDoBloc();

      await getIt.reset();
      getIt.registerFactory<CreateSummary>(() => mockCreateSummary);
      getIt.registerLazySingleton<ToDoBloc>(() => mockToDoBloc);

      // Stub the bloc stream to avoid side effects
      when(() => mockToDoBloc.stream).thenAnswer((_) => const Stream.empty());
    });

    blocTest<SummaryCubit, SummaryState>(
      'emits [Loading, Data] when summarize is called successfully',
      build: () {
        when(() => mockCreateSummary()).thenAnswer((_) async => expectedSummaryResult);

        return SummaryCubit(mockCreateSummary);
      },
      act: (cubit) => cubit.summarize(),
      expect:
          () => [
            SummaryState(summaryResult: const Loading()),
            SummaryState(summaryResult: Data(data: expectedSummaryResult)),
          ],
      verify: (_) {
        verify(() => mockCreateSummary()).called(1);
      },
    );

    blocTest<SummaryCubit, SummaryState>(
      'emits [Loading, Error] when summarize throws exception',
      build: () {
        when(() => mockCreateSummary()).thenThrow(DataException(message: 'Something failed', type: Exception));
        return SummaryCubit(mockCreateSummary);
      },
      act: (cubit) => cubit.summarize(),
      expect:
          () => [
            SummaryState(summaryResult: const Loading()),
            isA<SummaryState>().having((s) => s.summaryResult, 'summaryResult', isA<Error>()),
          ],
    );
  });
}
