import 'package:abstracta_to_dos/config/di/injection.dart';
import 'package:abstracta_to_dos/config/style/app_colors.dart';
import 'package:abstracta_to_dos/core/common/result_state.dart';
import 'package:abstracta_to_dos/core/widgets/add_tag_chip_button.dart';
import 'package:abstracta_to_dos/core/widgets/custom_app_bar.dart';
import 'package:abstracta_to_dos/core/widgets/default_horizontal_spacing.dart';
import 'package:abstracta_to_dos/features/to_do/domain/model/to_do_model.dart';
import 'package:abstracta_to_dos/features/to_do/presentation/bloc/to_do_bloc.dart';
import 'package:abstracta_to_dos/features/to_do/presentation/widgets/to_do_tag_chip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class ToDoEditor extends StatefulWidget {
  final ToDoModel? toDoModel;
  final bool showAppBarLeading;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  ToDoEditor({super.key, this.toDoModel, this.showAppBarLeading = true});

  @override
  State<ToDoEditor> createState() => _ToDoEditorState();
}

class _ToDoEditorState extends State<ToDoEditor> {
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;
  late TextEditingController _assignedToController;
  late TextEditingController _dueDateController;
  late List<String>? _tags;
  final canSubmit = ValueNotifier(false);
  final canGenerateDescription = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.toDoModel?.title ?? '');
    _descriptionController = TextEditingController(text: widget.toDoModel?.description ?? '');
    _assignedToController = TextEditingController(text: widget.toDoModel?.assignedTo ?? '');
    _dueDateController = TextEditingController(
      text: widget.toDoModel?.dueDate != null ? DateFormat('MM/dd/yyyy').format(widget.toDoModel!.dueDate!) : '',
    );
    _tags = widget.toDoModel?.tags ?? <String>[];
  }

  Widget buildSubmitButton() {
    late Widget submitButton;
    if (widget.toDoModel != null) {
      submitButton = ValueListenableBuilder(
        valueListenable: canSubmit,
        builder:
            (context, canSubmit, child) => FilledButton(
              onPressed:
                  canSubmit
                      ? () {
                        getIt<ToDoBloc>().add(
                          ToDoEvent.updateToDo(
                            widget.toDoModel!.copyWith(
                              title: _titleController.text,
                              description: _descriptionController.text,
                              assignedTo: _assignedToController.text,
                              dueDate: DateFormat('MM/dd/yyyy').tryParse(_dueDateController.text),
                              tags: _tags ?? [],
                            ),
                          ),
                        );
                      }
                      : null,
              child: Text('Update'),
            ),
      );
    } else {
      submitButton = ValueListenableBuilder(
        valueListenable: canSubmit,
        builder:
            (context, canSubmit, child) => FilledButton(
              onPressed:
                  canSubmit
                      ? () {
                        if (widget.formKey.currentState?.validate() ?? false) {
                          getIt<ToDoBloc>().add(
                            ToDoEvent.addToDo(
                              title: _titleController.text,
                              description: _descriptionController.text,
                              dueDate: DateFormat('MM/dd/yyyy').tryParse(_dueDateController.text),
                              assignedTo: _assignedToController.text,
                              tags: _tags ?? [],
                            ),
                          );
                        }
                      }
                      : null,
              child: Text('Create'),
            ),
      );
    }
    return SizedBox(height: 50, width: double.infinity, child: submitButton);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ToDoBloc, ToDoState>(
      bloc: getIt<ToDoBloc>(),
      listenWhen: (previous, current) {
        return previous.addToDoResult != current.addToDoResult || previous.updateToDoResult != current.updateToDoResult;
      },
      listener: (context, state) {
        state.addToDoResult.whenOrNull(
          data: (data) {
            if (context.canPop()) {
              context.pop();
            }
            return;
          },
        );
        state.updateToDoResult.whenOrNull(
          data: (data) {
            if (context.canPop()) {
              context.pop();
            }
          },
        );
      },
      child: Scaffold(
        appBar: CustomAppBar(
          title: widget.toDoModel != null ? 'Edit task' : 'Create task',
          automaticallyImplyLeading: widget.showAppBarLeading,
        ),
        body: SingleChildScrollView(
          child: DefaultHorizontalSpacing(
            child: Form(
              key: widget.formKey,
              onChanged: () {
                final controllers = [_titleController, _assignedToController];
                final allFieldsValid = controllers.every((controller) => controller.text.isNotEmpty);
                if (widget.toDoModel != null) {
                  final toDoUpdated =
                      widget.toDoModel !=
                      widget.toDoModel?.copyWith(
                        title: _titleController.text,
                        description: _descriptionController.text,
                        assignedTo: _assignedToController.text,
                        dueDate: DateFormat('MM/dd/yyyy').tryParse(_dueDateController.text),
                        tags: _tags ?? [],
                      );
                  canSubmit.value = allFieldsValid && toDoUpdated;
                } else {
                  canSubmit.value = allFieldsValid;
                }
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 12,
                children: [
                  TextFormField(
                    controller: _titleController,
                    decoration: InputDecoration(labelText: 'Title'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a title';
                      }
                      return null;
                    },
                  ),
                  BlocSelector<ToDoBloc, ToDoState, String?>(
                    bloc: getIt<ToDoBloc>(),
                    selector:
                        (state) => state.generateDescriptionResult.maybeWhen(orElse: () => null, data: (data) => data),
                    builder: (context, generatedDescription) {
                      if (generatedDescription != null) {
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          if (mounted) {
                            _descriptionController.text = generatedDescription;
                          }
                        });
                      }
                      return TextFormField(
                        controller: _descriptionController,
                        maxLines: 7,
                        onChanged: (value) {
                          canGenerateDescription.value = value.isNotEmpty && 20 < value.length && value.length < 1000;
                        },
                        decoration: InputDecoration(
                          labelText: 'Description',
                          hintText:
                              'Write what you want to do with details. We can help you with that if you need it! Just type something brief and tap the button below.',
                        ),
                      );
                    },
                  ),
                  BlocSelector<ToDoBloc, ToDoState, bool>(
                    bloc: getIt<ToDoBloc>(),
                    selector:
                        (state) => state.generateDescriptionResult.maybeWhen(orElse: () => false, loading: () => true),
                    builder: (context, isLoading) {
                      return Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                          height: 30,
                          child: ValueListenableBuilder(
                            valueListenable: canGenerateDescription,
                            builder:
                                (context, canGenerateDescription, child) => FilledButton(
                                  onPressed:
                                      isLoading
                                          ? null
                                          : canGenerateDescription
                                          ? () {
                                            getIt<ToDoBloc>().add(
                                              ToDoEvent.generateDescription(_descriptionController.text),
                                            );
                                          }
                                          : null,
                                  child:
                                      isLoading
                                          ? Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: SizedBox.square(
                                              dimension: 12,
                                              child: CircularProgressIndicator(color: AppColors.darkGrey),
                                            ),
                                          )
                                          : Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              spacing: 4,
                                              children: [Icon(Icons.auto_awesome), Text('Use AI')],
                                            ),
                                          ),
                                ),
                          ),
                        ),
                      );
                    },
                  ),
                  Row(
                    spacing: 10,
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: _assignedToController,
                          decoration: InputDecoration(labelText: 'Assigned to'),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Task must be assigned to someone';
                            }
                            return null;
                          },
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(labelText: 'Due date'),
                          controller: _dueDateController,
                          readOnly: true,
                          onTap: () async {
                            final dueDate = await showDatePicker(
                              helpText: 'Choose a due date',
                              context: context,
                              firstDate: DateTime.now(),
                              lastDate: DateTime.now().add(const Duration(days: 365)),
                              currentDate: DateTime.now(),
                            );
                            if (dueDate != null) {
                              _dueDateController.text = DateFormat('MM/dd/yyyy').format(dueDate);
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  FormField<List<String>>(
                    initialValue: _tags,
                    builder: (fieldState) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Tags', style: Theme.of(context).textTheme.titleMedium),
                          Wrap(
                            spacing: 4,
                            runSpacing: 4,
                            children: [
                              ...fieldState.value?.map(
                                    (tag) => ToDoTagChip(
                                      label: tag,
                                      onRemove: () {
                                        final updatedTags = List<String>.from(fieldState.value ?? [])..remove(tag);
                                        setState(() => _tags = updatedTags);
                                        fieldState.didChange(updatedTags);
                                      },
                                    ),
                                  ) ??
                                  [],
                              AddTagChipButton(
                                label: 'Add',
                                icon: Icons.add,
                                onTagSubmitted: (tag) {
                                  final updatedTags = List<String>.from(fieldState.value ?? [])..add(tag);
                                  setState(() => _tags = updatedTags);
                                  fieldState.didChange(updatedTags);
                                },
                              ),
                            ],
                          ),
                          if (fieldState.hasError)
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                fieldState.errorText!,
                                style: TextStyle(color: Theme.of(context).colorScheme.error),
                              ),
                            ),
                        ],
                      );
                    },
                  ),
                  Padding(padding: const EdgeInsets.only(top: 20.0), child: buildSubmitButton()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
