import 'package:abstracta_to_dos/features/to_do/presentation/bloc/to_do_bloc.dart';
import 'package:mocktail/mocktail.dart';

class MockToDoBloc extends Mock implements ToDoBloc {}

class FakeToDoState extends Fake implements ToDoState {}