import 'package:abstracta_to_dos/core/common/result_state.dart';
import 'package:abstracta_to_dos/core/exceptions/custom_exception.dart';
import 'package:abstracta_to_dos/core/exceptions/domain_exception.dart';
import 'package:abstracta_to_dos/features/to_do/domain/model/to_do_model.dart';
import 'package:abstracta_to_dos/features/to_do/domain/usecases/add_to_do.dart';
import 'package:abstracta_to_dos/features/to_do/domain/usecases/complete_to_do.dart';
import 'package:abstracta_to_dos/features/to_do/domain/usecases/delete_to_do.dart';
import 'package:abstracta_to_dos/features/to_do/domain/usecases/edit_to_do.dart';
import 'package:abstracta_to_dos/features/to_do/domain/usecases/generate_description.dart';
import 'package:abstracta_to_dos/features/to_do/domain/usecases/get_completed_to_dos.dart';
import 'package:abstracta_to_dos/features/to_do/domain/usecases/get_pending_to_dos.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'to_do_state.dart';
part 'to_do_event.dart';
part 'to_do_bloc.freezed.dart';

@LazySingleton(order: 1)
class ToDoBloc extends Bloc<ToDoEvent, ToDoState> {
  final AddToDo addToDo;
  final GetPendingToDos getPendingToDos;
  final GetCompletedToDos getCompletedToDos;
  final CompleteToDo completeToDo;
  final DeleteToDo deleteToDo;
  final EditToDo editToDo;
  final GenerateDescription generateDescription;
  ToDoBloc(
    this.addToDo,
    this.getPendingToDos,
    this.getCompletedToDos,
    this.completeToDo,
    this.deleteToDo,
    this.editToDo,
    this.generateDescription,
  ) : super(const ToDoState()) {
    on<AddToDoEvent>(_onAddToDo);
    on<LoadToDosEvent>(_onLoadToDos);
    on<DeleteToDoEvent>(_onDeleteToDo);
    on<CompleteToDoEvent>(_onCompleteToDo);
    on<UpdateToDoEvent>(_onUpdateToDo);
    on<GenerateDescriptionEvent>(_onGenerateDescription);

    add(LoadToDosEvent());
  }

  void _onAddToDo(AddToDoEvent event, Emitter<ToDoState> emit) async {
    final originalState = state;
    try {
      final createdToDo = await addToDo(
        ToDoModel.create(
          title: event.title,
          description: event.description,
          dueDate: event.dueDate,
          assignedTo: event.assignedTo,
          tags: event.tags,
        ),
      );
      emit(state.copyWith(toDosList: [createdToDo, ...state.toDosList], addToDoResult: Data(data: createdToDo)));
      if (state.generateDescriptionResult is Data) {
        emit(state.copyWith(generateDescriptionResult: const Initial()));
      }
    } on CustomException catch (e) {
      emit(originalState.copyWith(addToDoResult: Error(error: DomainException(type: e, message: e.toString()))));
    }
  }

  void _onLoadToDos(LoadToDosEvent event, Emitter<ToDoState> emit) async {
    final originalState = state;
    emit(state.copyWith(getToDosResult: const Loading()));
    try {
      final allToDos = await _getAllToDos();
      emit(state.copyWith(toDosList: allToDos.toList(), getToDosResult: Data(data: allToDos.toList())));
    } on CustomException catch (e) {
      emit(originalState.copyWith(getToDosResult: Error(error: DomainException(type: e, message: e.toString()))));
    }
  }

  Future<Iterable<ToDoModel>> _getAllToDos() async {
    final pendingToDos = await getPendingToDos();
    final completedToDos = await getCompletedToDos();
    final overduePendingToDos = pendingToDos.where((todo) => todo.dueDate?.isBefore(DateTime.now()) ?? false).toList();
    final sortedPendingToDos = [
      ...overduePendingToDos,
      ...pendingToDos.where((todo) => !(todo.dueDate?.isBefore(DateTime.now()) ?? false)),
    ];
    return [...sortedPendingToDos, ...completedToDos];
  }

  void _onCompleteToDo(CompleteToDoEvent event, Emitter<ToDoState> emit) async {
    final originalState = state;
    try {
      await completeToDo(event.toDo);
      final allToDos = await _getAllToDos();
      emit(state.copyWith(toDosList: allToDos.toList()));
    } on CustomException catch (e) {
      emit(originalState.copyWith(updateToDoResult: Error(error: DomainException(type: e, message: e.toString()))));
    }
  }

  void _onDeleteToDo(DeleteToDoEvent event, Emitter<ToDoState> emit) async {
    final originalState = state;
    try {
      emit(state.copyWith(toDosList: state.toDosList.where((todo) => todo.todoId != event.id).toList()));
      await deleteToDo(event.id);
    } on CustomException catch (e) {
      emit(originalState.copyWith(deleteToDoResult: Error(error: DomainException(type: e, message: e.toString()))));
    }
  }

  void _onUpdateToDo(UpdateToDoEvent event, Emitter<ToDoState> emit) async {
    final originalState = state;
    try {
      await editToDo(event.toDo);
      final updatedToDoList =
          state.toDosList.map((todo) {
            return todo.todoId == event.toDo.todoId ? event.toDo : todo;
          }).toList();
      emit(state.copyWith(toDosList: updatedToDoList, updateToDoResult: Data(data: event.toDo)));
      if (state.generateDescriptionResult is Data) {
        emit(state.copyWith(generateDescriptionResult: const Initial()));
      }
    } on CustomException catch (e) {
      emit(originalState.copyWith(updateToDoResult: Error(error: DomainException(type: e, message: e.toString()))));
    }
  }

  void _onGenerateDescription(GenerateDescriptionEvent event, Emitter<ToDoState> emit) async {
    final originalState = state;
    emit(state.copyWith(generateDescriptionResult: const Loading()));
    try {
      final description = await generateDescription(event.prompt);
      emit(state.copyWith(generateDescriptionResult: Data(data: description)));
    } on CustomException catch (e) {
      emit(
        originalState.copyWith(
          generateDescriptionResult: Error(error: DomainException(type: e, message: e.toString())),
        ),
      );
    }
  }
}
