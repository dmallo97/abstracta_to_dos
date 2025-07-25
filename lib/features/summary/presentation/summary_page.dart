import 'package:abstracta_to_dos/config/di/injection.dart';
import 'package:abstracta_to_dos/core/common/result_state.dart';
import 'package:abstracta_to_dos/core/widgets/custom_app_bar.dart';
import 'package:abstracta_to_dos/features/summary/presentation/cubit/summary_cubit.dart';
import 'package:abstracta_to_dos/features/summary/presentation/widgets/stats_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SummaryCubit, SummaryState>(
      bloc: getIt<SummaryCubit>(),
      builder:
          (context, state) => Scaffold(
            appBar: CustomAppBar(logoOpacity: 1),
            body: state.summaryResult.maybeWhen(
              orElse: () {
                return const Center(child: CircularProgressIndicator());
              },
              data: (data) {
                return GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 165),
                  children: [
                    StatsCard(title: 'Completed', data: data.completedToDos.toString()),
                    StatsCard(title: 'Pending', data: data.pendingToDos.toString()),
                    StatsCard(title: 'Total', data: data.totalToDos.toString()),
                    StatsCard(title: 'Overdue', data: data.overdueToDos.toString()),
                    StatsCard(title: 'Tags used', data: data.totalTagsUsed.toString()),
                    StatsCard(
                      title: 'Running late',
                      data:
                          data.overdueUsers.$2.isNotEmpty
                              ? data.overdueUsers.$2.reduce((user1, user2) => '$user1, $user2')
                              : 'No one',
                    ),
                    StatsCard(title: 'Quickers🔥', data: data.completedWithinDay.$1.toString()),
                  ],
                );
              },
            ),
          ),
    );
  }
}
