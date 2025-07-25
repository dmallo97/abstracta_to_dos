import 'package:abstracta_to_dos/config/di/injection.dart';
import 'package:abstracta_to_dos/config/routes.dart';
import 'package:abstracta_to_dos/config/style/app_colors.dart';
import 'package:abstracta_to_dos/config/style/app_font_styles.dart';
import 'package:abstracta_to_dos/core/widgets/custom_app_bar.dart';
import 'package:abstracta_to_dos/features/to_do/domain/model/to_do_model.dart';
import 'package:abstracta_to_dos/features/to_do/presentation/bloc/to_do_bloc.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ToDoViewer extends StatelessWidget {
  final ToDoModel toDoModel;
  final ScrollController scrollController;
  const ToDoViewer({super.key, required this.toDoModel, required this.scrollController});

  Widget buildTitle() {
    final titleWidget = Text(toDoModel.title, style: AppFontStyles.getTitleBold.copyWith(color: AppColors.lightBlack));
    if (toDoModel.dueDate == null) {
      return titleWidget;
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            titleWidget,
            Text(
              'Due ${DateFormat('MM/dd/yyyy').format(toDoModel.dueDate!)}',
              style: AppFontStyles.getTitleBold.copyWith(color: AppColors.lightBlack),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomAppBar(
            content: toDoModel.dueDate != null ? buildTitle() : null,
            title: toDoModel.title,
            automaticallyImplyLeading: false,
          ),
          Expanded(
            child: SingleChildScrollView(
              controller: scrollController,
              padding: const EdgeInsets.all(14.0),
              child: Text(toDoModel.description, style: AppFontStyles.getBodyTextStyle.copyWith(fontSize: 16)),
            ),
          ),
          if (!toDoModel.isCompleted)
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: FilledButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(Theme.of(context).colorScheme.secondary),
                            foregroundColor: WidgetStateProperty.all(Theme.of(context).colorScheme.onSecondary),
                          ),
                          onPressed: () => Navigator.of(context).pop(Routes.editTodo),
                          child: Text('Edit'),
                        ),
                      ),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: FilledButton(
                          onPressed: () {
                            getIt<ToDoBloc>().add(ToDoEvent.completeToDo(toDoModel));
                            Navigator.of(context).pop();
                          },
                          child: Text('Complete'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
