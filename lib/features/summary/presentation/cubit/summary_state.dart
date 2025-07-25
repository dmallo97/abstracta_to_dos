part of 'summary_cubit.dart';

@freezed
abstract class SummaryState with _$SummaryState {
  const factory SummaryState({@Default(Initial()) ResultState<SummaryModel> summaryResult}) = _SummaryState;
}
