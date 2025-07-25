import 'package:abstracta_to_dos/config/di/injection.dart';
import 'package:abstracta_to_dos/config/style/app_colors.dart';
import 'package:abstracta_to_dos/config/style/app_font_styles.dart';
import 'package:abstracta_to_dos/core/widgets/custom_card.dart';
import 'package:abstracta_to_dos/features/to_do/domain/model/to_do_model.dart';
import 'package:abstracta_to_dos/features/to_do/presentation/bloc/to_do_bloc.dart';
import 'package:abstracta_to_dos/features/to_do/presentation/to_do_viewer.dart';
import 'package:abstracta_to_dos/features/to_do/presentation/widgets/to_do_tag_chip.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class ToDoCard extends CustomCard {
  ToDoCard(BuildContext context, {super.key, required ToDoModel toDoModel})
    : super(
        onTap: () async {
          final routeToRedirect = await showModalBottomSheet<String>(
            context: context,
            useRootNavigator: true,
            showDragHandle: true,
            useSafeArea: true,
            isScrollControlled: true,
            backgroundColor:
                !toDoModel.isCompleted && (toDoModel.dueDate?.isBefore(DateTime.now()) ?? false) ? AppColors.red : null,
            builder: (context) {
              return DraggableScrollableSheet(
                initialChildSize: 1.0,
                minChildSize: 0.3,
                maxChildSize: 1.0,
                expand: false,
                builder: (context, scrollController) {
                  return ToDoViewer(toDoModel: toDoModel, scrollController: scrollController);
                },
              );
            },
          );
          if (routeToRedirect != null && context.mounted) {
            context.pushNamed(routeToRedirect, extra: toDoModel);
          }
        },
        content: Opacity(
          opacity: toDoModel.isCompleted ? 0.5 : 1.0,
          child: Row(
            children: [
              if (!toDoModel.isCompleted && (toDoModel.dueDate?.isBefore(DateTime.now()) ?? false))
                Container(width: 9, height: double.infinity, color: AppColors.red),
              if (toDoModel.dueDate != null &&
                  !toDoModel.isCompleted &&
                  DateTime.now().isAfter(toDoModel.dueDate!.add(Duration(days: -1))) &&
                  DateTime.now().isBefore(toDoModel.dueDate!))
                Container(width: 9, height: double.infinity, color: AppColors.yellow),
              Expanded(child: _ToDoCardContent(toDoModel: toDoModel, key: key)),
              if (toDoModel.isCompleted)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Icon(Icons.check_circle, color: AppColors.boldPurple, size: 24),
                )
              else
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: IconButton(
                    icon: Icon(Icons.circle_outlined, size: 24),
                    color: AppColors.darkGrey,
                    visualDensity: VisualDensity.compact,
                    onPressed: () {
                      getIt<ToDoBloc>().add(ToDoEvent.completeToDo(toDoModel));
                    },
                  ),
                ),
            ],
          ),
        ),
      );
}

class _ToDoCardContent extends StatelessWidget {
  final ToDoModel toDoModel;
  const _ToDoCardContent({super.key, required this.toDoModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(toDoModel.title, style: AppFontStyles.getToDoCardTitle),
          Text(
            toDoModel.description,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
            style: AppFontStyles.getToDoCardDescription,
          ),
          Text('Assigned to: ${toDoModel.assignedTo}', style: AppFontStyles.getToDoCardOwner),
          if (!toDoModel.isCompleted && (toDoModel.dueDate?.isBefore(DateTime.now()) ?? false))
            Text('Due ${DateFormat('MM/dd/yyyy').format(toDoModel.dueDate!)}', style: AppFontStyles.getToDoCardDueDate),
          if (toDoModel.tags.isNotEmpty)
            Wrap(spacing: 4, children: toDoModel.tags.map((tag) => ToDoTagChip(label: tag)).toList()),
        ],
      ),
    );
  }
}
