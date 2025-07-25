import 'package:abstracta_to_dos/config/di/injection.dart';
import 'package:abstracta_to_dos/core/common/result_state.dart';
import 'package:abstracta_to_dos/core/exceptions/custom_exception.dart';
import 'package:abstracta_to_dos/core/exceptions/domain_exception.dart';
import 'package:abstracta_to_dos/features/summary/domain/model/summary_model.dart';
import 'package:abstracta_to_dos/features/summary/domain/usecases/create_summary.dart';
import 'package:abstracta_to_dos/features/to_do/presentation/bloc/to_do_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'summary_state.dart';
part 'summary_cubit.freezed.dart';

@LazySingleton(order: 2)
class SummaryCubit extends Cubit<SummaryState> {
  final CreateSummary createSummary;
  SummaryCubit(this.createSummary) : super(SummaryState()) {
    getIt<ToDoBloc>().stream.listen((state) {
      summarize();
    });
  }

  void summarize() async {
    emit(state.copyWith(summaryResult: const Loading()));
    try {
      final summary = await createSummary();
      emit(state.copyWith(summaryResult: Data(data: summary)));
    } on CustomException catch (e) {
      emit(state.copyWith(summaryResult: Error(error: DomainException(type: e, message: e.toString()))));
    }
  }
}
