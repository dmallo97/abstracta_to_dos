import 'package:abstracta_to_dos/features/to_do/domain/model/to_do_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'summary_model.freezed.dart';
part 'summary_model.g.dart';

@freezed
abstract class SummaryModel with _$SummaryModel {
  const factory SummaryModel({
    required int totalToDos,
    required int completedToDos,
    required int pendingToDos,
    required int overdueToDos,
    required int totalTagsUsed,
    required (int, List<String>) overdueUsers,
    required (int, List<ToDoModel>) completedWithinDay,
  }) = _SummaryModel;

  factory SummaryModel.fromJson(Map<String, dynamic> json) => _$SummaryModelFromJson(json);
}
